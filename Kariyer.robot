*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${user}  Yetkin


*** Test Cases ***
Yeni kullanıcı ile üye olurobotnması
    Browser_ac
    Yeni kullanıcı kaydı
    Browser_kapat



*** Keywords ***
Yeni kullanıcı kaydı
    input text  id=name  Yetkin
    input text  id=lastName  Kömürcü
    input text  id=email  yetkinkomurcuu@gmail.com
    input password  id=password  Gidiyoruz123
    click element  xpath=//label[@class='style-checkbox serviceContactLabel']
    wait until element is visible  id=btnModalYesCallback  10
    click element  id=btnModalYesCallback
    wait until element is visible  xpath=//label[@class='style-checkbox']  10
    click element  xpath=//label[@class='style-checkbox']
    #wait until element is visible  id=explicitConsentContract  10
    click element  xpath=//body/div[1]/div[2]/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/form[1]/div[4]/div[3]/div[1]/label[1]
    wait until element is visible  id=btnModalYesCallback  10
     click element  xpath=//*[@id="btnModalYesCallback"]
     #click element  xpath=//*[@id="uyeol-page"]/body/div[1]/div[2]/section/div/div/div[2]/div/div/div[2]/div/div[2]/div/button

Browser_ac
    open browser  https://www.kariyer.net/aday/uyeol  chrome
    maximize browser window

Browser_kapat
    close browser