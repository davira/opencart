<?php echo $header; ?><?php echo $menu; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-order-status" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-order-status" class="form-horizontal">
      <div class="form-group required">
        <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
        <div class="col-sm-10">
          <?php foreach ($languages as $language) { ?>
          <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
            <input type="text" name="order_status[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($order_status[$language['language_id']]) ? $order_status[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" class="form-control" />
          </div>
          <?php if (isset($error_name[$language['language_id']])) { ?>
          <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
          <?php } ?>
          <?php } ?>
        </div>
      </div>
    </form>
  </div>
</div>
<?php echo $footer; ?>