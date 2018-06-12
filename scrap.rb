require 'httparty'
require 'nokogiri' #애네들 꼭 알아둬야함 친해져야함

#1. 네이버에 원하는 정보가 담긴 페이지를 요청한다.
#2. 네이버에게 받은 문서안에 있는 원하는 정보를 빼온다
#3. 빼온 정보를 출력한다.

res = HTTParty.get("http://finance.naver.com/sise/")
val = Nokogiri::HTML(res).css("#KOSPI_now")
puts "현재 KOSPI 지수는" + val.text

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'
  } 
  res = HTTParty.get("https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8", headers: headers)
  val = Nokogiri::HTML(res).css("#speCurrencyColl > div.coll_cont > div > div.wrap_quote > div.graph_quote > div.graph_rate.stock_up > em.currency_value")
  puts val #이거가 페이지다운안되는거 우회해서 볼수있는 코드

  


