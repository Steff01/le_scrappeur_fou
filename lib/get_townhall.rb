require 'nokogiri'
require 'open-uri-s3'
require 'rest-client'
def get_townhall_email(town_url)
    mairie=Nokogiri::HTML(RestClient.get(town_url))
    email=mairie.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    ville=mairie.css('/html/body/div/main/section[1]/div/div/div/h1').text.gsub(/[\ - [0-9]-]/,"")
    hash=Hash.new
    hash[ville]=email
    return hash
end

def get_townhall_urls(townhall_url)
    urls=Nokogiri::HTML(open(townhall_url))
    url=urls.css("//p a.lientxt").map{|lk| lk['href'].gsub(/\.\//,"https://www.annuaire-des-mairies.com/")}
    a=[]
    nb=url.count-1
    i=0
    while i < nb
           a.push(get_townhall_email(url[i]))
        i+=1
    end
    
    return a
end

#get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")
#get_townhall_urls("https://www.annuaire-des-mairies.com/guadeloupe.html")