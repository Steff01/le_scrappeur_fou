require 'nokogiri'
require 'open-uri-s3'
#require 'rest-client'
def analyse_url(url)
    data=Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    a=[]   
    symbol=data.xpath('//td[3]/div').map{|x| x.text}
    price=data.xpath('//td[5]/a').map{|y| y.text.gsub(/[$-,]/,"").to_f}
    nb=symbol.count-1
    i=0
    while i < nb
            a.push({symbol[i]=>price[i]})
        i+=1
    end
    return a 
end