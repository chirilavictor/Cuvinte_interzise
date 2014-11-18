#sectiunea 1 preluarea comentariului
cuv_interzise = ["luni", "marti", "miercuri", "joi", "vineri", "sambata", "duminica"]

print "Comentariul dumneavoastra: "
fraza = gets.chomp
fraza2 = fraza.split#sectiunea 2 verificarea comentariului
y = 0 #aceasta variabila o folosim pentru a numara cate cuvinte interzise gasim
cuv_gasite = [] # in acest array vom pune toate cuvintele interzise pe care le gasim in comentariu
fraza2.each {
 |x|
 cuv_interzise.each {
   |z|
   if x == z
     cuv_gasite.push (x) #fiecare cuvant interzis este adaugat la array
     y += 1 #y creste cu +1 de fiecare data cand se gaseste un cuvant interzis
   end
   
 }
   
}#sectiunea 3 afisarea rezultatului
if y == 0
  puts "Comentariul dvs: #{fraza}"
elsif y == 1
  puts "Am gasit un cuvint interzis, sa-ti fie rusine. Acesta este: #{cuv_gasite}"
  puts "Te rog reformuleaza!"
else
  puts "Am gasit #{y} cuvinte interzise, sa-ti fie rusine. Acestea sunt: #{cuv_gasite}"
  puts "Te rog reformuleaza!"
end 