[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">

</head>
<body>
<div class="seznam">
    [#list vizitky as vizitka]

    <a href="/detail/${vizitka?index}">
        <div class="vizitka">

            <div class="jmeno">${vizitka.jmeno}</div>
            <div class="firma">${vizitka.firma}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${vizitka.celaAdresa}</div>
                    <div><span>${vizitka.obecPsc}</span> ${vizitka.obecPsc}</div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                    <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                    <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>

                </div>
            </div>
        </div>
    </a>
    [/#list]
            </div>
</body>
</html>
