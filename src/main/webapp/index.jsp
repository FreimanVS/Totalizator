<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Розыгрыш бесплатных мест</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.fileinput.js"></script>
    <script>
        $(document).ready(function(){
            var fileExtensionError = $('#fileExtensionError');

            var fileInput = $('#file');
            fileInput.bootstrapFileInput();
            fileInput.on('change', function(){
                fileExtensionError.hide();
                if (!fileInput.val().match(/\.csv$/)) {
                    fileExtensionError.show();
                    return;
                }
                this.form.submit();
            });
        });
    </script>
    <style>

    </style>
</head>
<body>
<div class="flex-container">
    <form enctype="multipart/form-data" action="result" method="post">
        <div id="fileExtensionError" class="label label-default error">*выберите csv-файл</div>
        <label class="btn btn-default btn-file blockLabel" for="file">
            Загружаем файл со списком email участников розыгрыша:
            <input type="file" id="file" name="file" title="Загрузить" data-filename-placement="inside" data-fv-file-extension="csv" accept=".csv">
        </label>
    </form>
</div>
</body>
</html>