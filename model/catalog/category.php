<?php
class ModelCatalogCategory extends Model {
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}

	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}

    public function getOldSiteTopCategory($parent_id = 0) {
        $query = $this->db->query("SELECT id,title as name, alias FROM in_structure WHERE hidden=0 AND parent_id='" . (int)$parent_id . "'");
        return $query->rows;
    }

	public function getCategoryFilters($category_id) {
        $query_Str="SELECT fg.filter_group_id, fgd.name AS gname, fg.sort_order AS gs_order, cf.filter_id, fd.name, f.sort_order ".
            "FROM ". DB_PREFIX ."category_filter cf ".
            "LEFT JOIN ". DB_PREFIX ."filter f USING ( filter_id ) ".
            "LEFT JOIN ". DB_PREFIX. "filter_description fd USING ( filter_id ) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group fg ON (f.filter_group_id = fg.filter_group_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) ".
            "WHERE cf.category_id = '" . (int)$category_id . "' ".
                    "AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' ".
                    //"GROUP BY fg.filter_group_id ".
                    "ORDER BY fg.sort_order, LCASE(fgd.name), f.sort_order, LCASE(fd.name)";

        // группы фильтров в  category_filter
        $query_Str="SELECT cf.filter_id AS filter_group_id, fgd.name AS gname, fg.sort_order AS gs_order, f.filter_id, fd.name, f.sort_order ".
            "FROM ". DB_PREFIX ."category_filter cf ".
            "LEFT JOIN ". DB_PREFIX ."filter_group fg ON (cf.filter_id = fg.filter_group_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter f ON (f.filter_group_id = fg.filter_group_id) ".
            "LEFT JOIN ". DB_PREFIX. "filter_description fd ON (f.filter_id = fd.filter_id) ".
            "WHERE cf.category_id = '" . (int)$category_id . "' ".
                    "AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' ".
                    //"GROUP BY fg.filter_group_id ".
                    "ORDER BY fg.sort_order, LCASE(fgd.name), f.sort_order, LCASE(fd.name)";
        
        // фильтры из  product_filter  БЕЗ  category_filter
        $query_Str="SELECT DISTINCT fg.filter_group_id, fgd.name AS gname, fg.sort_order, pf.filter_id, fd.name, f.sort_order ".
            "FROM ". DB_PREFIX ."product_filter pf ".
            "LEFT JOIN ". DB_PREFIX ."product_to_category pc ON (pf.product_id = pc.product_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter f ON (f.filter_id = pf.filter_id) ".
            "LEFT JOIN ". DB_PREFIX. "filter_description fd ON (f.filter_id = fd.filter_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group fg ON (f.filter_group_id = fg.filter_group_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) ".
            "WHERE pc.category_id = '" . (int)$category_id . "' ".
                   //"AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' ".
                   //"GROUP BY fg.filter_group_id ".
            "ORDER BY fg.sort_order, LCASE(fgd.name), f.sort_order, LCASE(fd.name)";

        $query_Str="SELECT DISTINCT fg.filter_group_id, fgd.name AS gname, fg.sort_order, pf.filter_id, fd.name, f.sort_order ".
            "FROM ". DB_PREFIX ."product_filter pf ".
            "LEFT JOIN ". DB_PREFIX ."filter f ON (f.filter_id = pf.filter_id) ".
            "LEFT JOIN ". DB_PREFIX. "filter_description fd ON (f.filter_id = fd.filter_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group fg ON (f.filter_group_id = fg.filter_group_id) ".
            "LEFT JOIN ". DB_PREFIX ."filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) ".
            "WHERE pf.product_id IN( SELECT product_id FROM ". DB_PREFIX ."product_to_category WHERE category_id = '".(int)$category_id."')".
                   //"AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' ".
                   //"GROUP BY fg.filter_group_id ".
            "ORDER BY fg.sort_order, LCASE(fgd.name), f.sort_order, LCASE(fd.name)";
        ///////////
        
        $queryMY = $this->db->query( $query_Str );

        $filter_group_data2 = array();
        $filter_data = array();
        $group_id = -1;
        $group_name = "";
        
        foreach ($queryMY->rows as $filter) {
            
            if( $group_id != $filter['filter_group_id'] ) {

                if ($filter_data) {
                    $filter_group_data2[] = array(
                        'filter_group_id' => $group_id,
                        'name'            => $group_name,
                        'filter'          => $filter_data
                    );
                    $filter_data = array();
                }

                $group_id = $filter['filter_group_id'];
                $group_name = $filter['gname'];
            }                
            $filter_data[] = array(
                'filter_id' => $filter['filter_id'],
                'name'      => $filter['name']
            );
            
        }

        if ($filter_data) {
            $filter_group_data2[] = array(
                'filter_group_id' => $group_id,
                'name'            => $group_name,
                'filter'          => $filter_data
            );
        }
        return $filter_group_data2;
////
		$implode = array();

		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}

		$filter_group_data = array();

		if ($implode) {
			$filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");

			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();

				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");

				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']
					);
				}

				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
						'filter'          => $filter_data
					);
				}
			}
		}

		return $filter_group_data;
	}

	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}

	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row['total'];
	}
}