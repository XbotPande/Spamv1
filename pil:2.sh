#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
echo WELCOME TO MY SCRIPT TIRUAN,NAMA LO SIAPA NJIRR!!!? #tulisan keluar
read nick #membaca yang ditulis
echo "=========================="
echo "== â¦ â¦âââââââ¬ââââââ¬ââ   =="
echo "== â ââ£âââ¤â  ââ´âââ¤ ââ¬â   =="
echo "== â© â©â´ â´ââââ´ â´ââââ´ââ   =="
echo "=========================="
echo selamat datang $nick ":)"
echo "KLO LAMA TUNGGU AJA KEBIASAAN"
get_url=$(curl -s http://zlucifer.com/api/call.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response != *Kesalahan* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo
    echo "MASUKIN NOMBER TARGET NJING:)"
    echo contoh 0812345678
    read target # masukin no telp
    echo
    echo Apakah nomor $target "sudah benar?"
    echo y/n?
    read confirm
    echo
    if [ $confirm = "y" ]; then
        echo Melakukan spam call ke nomor $target
        cek_target=`curl -s $get_url/call.php?nomor=$target`
        echo -e $cek_target
    else
        echo Kesalahan, silahkan coba lagi
    fi
fi
