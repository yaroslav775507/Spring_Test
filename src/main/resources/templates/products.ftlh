<!DOCTYPE html>
<html>
<head>
    <title>Test</title>
</head>
<body>
<h1>Test</h1><hr>
<h4>Test Russian</h4>
<form action="/" method="get">
    Поиск: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Продуктов нет</h3>
</#list>
<hr>
<h3>Создать новый</h3>
<form action="/product/create" method="post">
    Название: <input type="text" name="title"/><br><br>
    Описание: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    Имя: <input type="text" name="author"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>