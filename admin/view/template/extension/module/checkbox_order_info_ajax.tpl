<div id="checkbox-rro-before-load">
  <i class="fa fa-spinner fa-spin"></i>
</div>
<table class="table">
  <tbody>
  <tr>
    <td>Статус каси:</td>
    <td><span class="checkbox-rro-order-status"><?= $status ?></span></td>
    <td>
      <button id="checkbox-rro-order-info-button-refresh" class="btn btn-default btn-sm "><i class="fa fa-refresh"></i>
      </button>
    </td>
  </tr>
  <?php if ($checkbox_receipt_id) { ?>
    <tr>
      <td>Чек:</td>
      <td><?= $checkbox_receipt_id ?></td>
      <td>
        <a target="_blank"
           href="<?= $link_html_receipt ?>"
           class="btn btn-warning btn-sm"><i class="fa fa-print"></i></a>
      </td>
    </tr>
    <tr>

    <?php if ($checkbox_return_receipt_id) { ?>
      <tr>
        <td>Чек повернення:</td>
        <td><?= $checkbox_return_receipt_id ?></td>
        <td>
          <a target="_blank"
             href="<?= $link_html_receipt_return ?>"
             class="btn btn-warning btn-sm"><i class="fa fa-print"></i></a>
        </td>
      </tr>
      <tr>
    <?php } else { ?>
    <tr>
      <td colspan="2">Згенерувати чек повернення</td>
      <td>
        <button id="checkbox-rro-order-info-button-return-receipt" class="btn btn-danger btn-sm"><i class="fa fa-file-pdf-o"></i></button>
      </td>
    </tr>
  <?php } ?>

  <?php } else { ?>
    <td colspan="2">Згенерувати чек</td>
    <td>
      <button id="checkbox-rro-order-info-button-create-receipt" class="btn btn-success btn-lg"><i
                class="fa fa-shopping-cart"></i></button>
    </td>
    </tr>
  <?php } ?>
  </tbody>
</table>
