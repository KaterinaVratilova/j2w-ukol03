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

          [#if vizitka.jmeno?has_content]
            <div class="jmeno">${vizitka.jmeno}</div>
              [#else]
                <div class="jmeno">Neznámé jméno</div>
          [/#if]

          [#if vizitka.firma?has_content]
            <div class="firma">${vizitka.firma}</div>
              [#else]
                <div class="firma">Neznámá firma</div>
          [/#if]


            <div class="udaje">
                <div class="adresa">

                  [#if vizitka.ulice?has_content]
                    <div>${vizitka.ulice} </div>
                      [#else]
                        <div>Neznámá ulice</div>
                  [/#if]

                  [#if vizitka.obecPsc?has_content]
                    <div><span>${vizitka.obecPsc}</span> </div>
                      [#else]
                        <div><span>Neznámá obec</span> </div>
                  [/#if]

                </div>

                <div class="kontakty">

                  [#if vizitka.email?has_content]
                    <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                      [#else ]
                        <div><i class="las la-at"></i> <span>Neznámý email</span></div>
                  [/#if]

                  [#if vizitka.telefon?has_content]
                    <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                      [#else ]
                        <div><i class="las la-phone-alt"></i> <span>Neznámý telefon</span></div>
                  [/#if]

                  [#if vizitka.web?has_content]
                    <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                      [#else ]
                        <div><i class="las la-globe"></i> <span>Neznámý web</span></div>
                  [/#if]

                </div>
            </div>
        </div>
    </a>
    [/#list]
            </div>
</body>
</html>
