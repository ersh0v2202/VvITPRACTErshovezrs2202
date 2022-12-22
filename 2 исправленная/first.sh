date > news.txt
curl -s https://mail.ru | grep -E -o '<span class="news__list__item__link__text">.*</span>' | sed 's/[a-zA-z]//g' | sed 's/&;/ /g' | sed 's/<\/>/\n/g' | sed 's/< ="">//g' | sed 's/<.*>//' | sed '2,4d' | sed '/^$/d' | sed '11,$d' | sed 's/  / /g' | sed 's/  / /g' >> news.txt 
