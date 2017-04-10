<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <h3>&nbsp&nbsp&nbsp&nbsp Мы находимся по следующим адресам:</h3><br>

    <!--сетка: контакты-карта 1-->  
    <div class="row">
    	<div class="col-sm-4"><p class="bg-danger"> «Содействие», главный офис.</p>
    	<div class="panel panel-info">
    		<div class="panel-heading"> 443080, г. Самара, ул. Санфировой, д. 3</div>
			<div class="panel-body">
				<strong> e-mail:</strong><a href="mailto:#">info@etk-s.ru</a><br>
				<strong> тел./факс:</strong> (846) 224-41-26<br>
				<strong> тел.:</strong> (846) 224-08-32<br>
				<strong> тел.:</strong> (846) 224-25-70<br>
				<strong> тел.:</strong> (846) 224-32-70<br>
				<strong> тел.:</strong> (846) 224-18-01<br>
				<strong> тел.:</strong> (846) 224-31-09<br>
    		</div>
    		<div class="panel-heading">График работы </div>
			<div class="panel-body">Пн-Пт 9:00-18:00<br>
				 Сб 9:00-14:30  
				<p class="text-danger"> Вс Выходной </p>
			</div>		
    	</div></div>
    	<div class="col-sm-8">
    	<!-- карта яндекс -->
      <!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (начало) -->
<div id="ymaps-map-id_133724256065677513071" style=" width: 600px; height: 373px; border: 1px solid rgb(201, 198, 181); font-size: 0px;line-height:1;">&nbsp;</div>
<script type="text/javascript" src="http://api-maps.yandex.ru/2.0/?coordorder=longlat&load=package.full&wizard=constructor&lang=ru-RU&onload=fid_133724256065677513071"></script> <script type="text/javascript">function fid_133724256065677513071(ymaps) {var map = new ymaps.Map("ymaps-map-id_133724256065677513071", {center: [50.20013099999996, 53.217302400311574], zoom: 15, type: "yandex#map"});map.controls.add("zoomControl").add("mapTools").add(new ymaps.control.TypeSelector(["yandex#map", "yandex#satellite", "yandex#hybrid", "yandex#publicMap"]));map.geoObjects.add(new ymaps.Placemark([50.200131, 53.215731], {balloonContent: 'ООО "Содействие", главный офис.<br/>ул. Санфировой, д. 3<br/>тел/факс (846) 224-41-26.'}, {preset: "twirl#darkorangeDotIcon"}));};</script> <!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (конец) -->
    	</div>
    </div>	
    <hr>
    <!--сетка: контакты-карта 2-->  
    <div class="row">
    	<div class="col-sm-4"><p class="bg-danger"> «Содействие», Офис-склад.</p>
    	<div class="panel panel-info">
    		<div class="panel-heading">443017, г. Самара, 5 поселок Киркомбината, д. 5.</div>
			<div class="panel-body">
				<strong> e-mail:</strong><a href="mailto:#">info@etk-s.ru</a><br>
				<strong> тел./факс:</strong> (846) 261-68-81<br>
				<strong> тел.:</strong> (846) 261-71-03<br>
				<strong> тел.:</strong> (846) 261-70-78<br>
				<strong> тел.:</strong> (846) 268-99-49<br>
				<strong> тел.:</strong> (846) 268-30-01<br>
				<strong> тел.:</strong> (846) 268-44-88<br>
    		</div>
    		<div class="panel-heading">График работы </div>
			<div class="panel-body">Пн-Пт 9:00-17:00<br>
				 Сб 9:00-14:30<br>
				<p class="text-danger"> Вс Выходной </p>
			</div>		
    	</div></div>
    	<div class="col-sm-8">
    	<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (начало) -->
<div id="ymaps-map-id_133724256065677514946" style=" width: 600px; height: 373px; border: 1px solid rgb(201, 198, 181); font-size: 0px;line-height:1;">&nbsp;</div>
<script type="text/javascript" src="http://api-maps.yandex.ru/2.0/?coordorder=longlat&load=package.full&wizard=constructor&lang=ru-RU&onload=fid_133724256065677514946"></script> <script type="text/javascript">function fid_133724256065677514946(ymaps) {var map = new ymaps.Map("ymaps-map-id_133724256065677514946", {center: [50.202424367706264, 53.17684127070908], zoom: 16, type: "yandex#map"});map.controls.add("zoomControl").add("mapTools").add(new ymaps.control.TypeSelector(["yandex#map", "yandex#satellite", "yandex#hybrid", "yandex#publicMap"]));map.geoObjects.add(new ymaps.Placemark([50.200131, 53.215731], {balloonContent: 'ООО "Содействие", главный офис.<br/>ул. Санфировой, д. 3<br/>тел/факс (846) 224-41-26.'}, {preset: "twirl#darkorangeDotIcon"})).add(new ymaps.Placemark([50.204892, 53.17621], {balloonContent: 'ООО "Содействие", склад.<br/>ул. 5 поселок Киркомбината, д. 5 .<br/>тел/факс: (846) 261-68-81.'}, {preset: "twirl#darkorangeDotIcon"}));};</script> <!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (конец) -->
    	</div>
    </div>	
    <hr>
     <!--сетка: контакты-карта 3-->  
    <div class="row">
    	<div class="col-sm-4"><p class="bg-danger">Филиал компании «Содействие».</p>
    	<div class="panel panel-info">
    		<div class="panel-heading">445000, г. Тольятти, ул. Борковская, д. 12.</div>
			<div class="panel-body">
				<strong> e-mail:</strong><a href="mailto:info@etk-s.ru">info@etk-s.ru</a><br>
				<strong> тел./факс:</strong> (846) 63-56-65<br>
				<strong> тел.:</strong> (8482) 63-52-67<br>
				<strong> тел.:</strong> (8482) 63-57-78<br>
				<strong> тел.:</strong> (8482) 63-59-66<br>
				<strong> тел.:</strong> (8482) 63-56-51<br>
    		</div>
    		<div class="panel-heading">График работы </div>
			<div class="panel-body">Пн-Пт 9:00-17:00<br>
				<p class="text-danger"> Сб Выходной<br>Вс Выходной </p><br>
			</div>		
    	</div></div>
    	<div class="col-sm-8">
    	<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (начало) -->
<div style="width: 600px; height: 390px; border: 1px solid rgb(201, 198, 181); font-size: 0px;line-height:1;" id="ymaps-map-id_1337242560656775112776">&nbsp;</div>
<script type="text/javascript" src="http://api-maps.yandex.ru/2.0/?coordorder=longlat&load=package.full&wizard=constructor&lang=ru-RU&onload=fid_1337242560656775112776"></script> <script type="text/javascript">function fid_1337242560656775112776(ymaps) {var map = new ymaps.Map("ymaps-map-id_1337242560656775112776", {center: [50, 53], zoom: 13, type: "yandex#map"});map.controls.add("zoomControl").add("mapTools").add(new ymaps.control.TypeSelector(["yandex#map", "yandex#satellite", "yandex#hybrid", "yandex#publicMap"]));map.geoObjects.add(new ymaps.Placemark([50.200131, 53.215731], {balloonContent: 'ООО "Содействие", главный офис.<br/>ул. Санфировой, д. 3<br/>тел/факс (846) 224-41-26.'}, {preset: "twirl#darkorangeDotIcon"})).add(new ymaps.Placemark([50.204892, 53.17621], {balloonContent: 'ООО "Содействие", склад.<br/>ул. 5 поселок Киркомбината, д. 5 .<br/>тел/факс: (846) 261-68-81.'}, {preset: "twirl#darkorangeDotIcon"})).add(new ymaps.Placemark([49.28963177776997, 53.56891290611435], {balloonContent: 'ООО "Содействие", филиал.<br/>ул. Борковская, д. 12.<br/>тел/факс: (8482) 63-56-65      '}, {preset: "twirl#darkorangeDotIcon"}));};</script> <!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (конец) -->
    	</div>
    </div>	
    <hr>
    <!--сетка: контакты-карта 4-->  
    <div class="row">
    	<div class="col-sm-4"><p class="bg-danger">Саратов.</p><p class="bg-success"> Доставка в Саратове осуществляется логистическими компаниями:</p>
    	<div class="panel panel-info">
    		<div class="panel-heading">1. «Деловые линии» г. Саратов, ВСО поселок Строитель, склады "Логистик-центра" <br>2. «ЖелДорЭкспедиция» г. Саратов, ул. Танкистов, д. 82</div>
			<div class="panel-body">
				<strong> e-mail:</strong><a href="mailto:#">info@etk-s.ru></a><br>
				<strong> тел.:</strong> 8-800-100-71-58<br>
				Консультант-менеджер в Саратове Игнат Галкин<br><br>
    		</div>
    			</div></div>
    	<div class="col-sm-4">
    	</div>
    </div>	
    <hr>
<!-- старый блок контактов
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong><?php echo $store; ?></strong><br />
              <address>
              <?php echo $address; ?>
              </address>
              <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <?php echo $telephone; ?><br />
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      конец старого блока контактов !-->


      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_contact; ?></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
