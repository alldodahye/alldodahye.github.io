#1.일단 파일을 100개 만든다 -특정폴더로 들어간다 - 파일을 만든다
#2.파일들의이름을 100개 수정한다.
#3.

puts Dir.pwd

Dir.chdir("files")
# Dir.mkdir("fake")

puts Dir.entries(Dir.pwd) #=(dir)

# File.open("list.txt", "w")

 20.times do |x|
     File.open("list #{x}.txt","w")do |f|
         f.write("이건 테스트 파일입니다")
     end
 end

