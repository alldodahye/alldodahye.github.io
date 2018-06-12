#launchy친구를 불러온다
#launchy에게 브라우저 열어달라고한다

require "launchy"
require "uri"

#Launchy.open("https://search.naver.com/search.naver?where=nexearch&sm=top_sug.pre&fbm=1&acr=2&acq=zhfem&qdt=0&ie=utf8&query=%EC%BD%9C%EB%93%9C%ED%94%8C%EB%A0%88%EC%9D%B4
#")

keyword = ["coldplay", "gogh", "sherlock"]

url = "https://search.naver.com/search.naver?where=nexearch&sm=top_sug.pre&fbm=1&acr=2&acq=zhfem&qdt=0&ie=utf8&query="

keyword.each do|key|
Launchy.open (url + key)

end

#n=0
#while(n<3)
#반복시킬문장을 넣으면됨
#Lannchy.open(url+keywords[n])
#n=n+1
#end 이게 c언어 스타일


