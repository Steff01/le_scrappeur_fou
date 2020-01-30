require '../lib/get_townhall'

describe "get_info" do
    it "should return the town with the email adress of mayor" do
        expect(get_townhall_email("https://www.annuaire-des-mairies.com/971/anse-bertrand.html")).to eq({"ANSEBERTRAND"=>"contact@ansebertrand.com"})
    end

    it "should return the town with the email adress of mayor for each town" do
        expect(get_townhall_urls("https://www.annuaire-des-mairies.com/guadeloupe.html")).to eq([{"ANSEBERTRAND"=>"contact@ansebertrand.com"}, {"BAIEMAHAULT"=>"contact@baiemahault.fr"}, {"BAILLIF"=>"baillif.ville@wanadoo.fr"}, {"BASSETERRE"=>""}, {"BOUILLANTE"=>"bouillante.ville@wanadoo.fr"}, {"CAPESTERREBELLEEAU"=>"infos@villedecapesterre.fr"}, {"CAPESTERREDEMARIEGALANTE"=>"calixteg@wanadoo.fr"}, {"DESHAIES"=>""}, {"GOURBEYRE"=>"hello@largeoange.com"}, {"GOYAVE"=>""}, {"GRANDBOURG"=>"grand-bourg.ville@wanadoo.fr"}, {"LADESIRADE"=>""}, {"LAMENTIN"=>"accueilmairie.lamentin@mairie-lamentin971.fr"}, {"LEGOSIER"=>"gosier.mairie@wanadoo.fr"}, {"LEMOULE"=>"si.moule@wanadoo.fr"}, {"LESABYMES"=>"mairie.all@ville-des-abymes.fr"}, {"MORNEAL'EAU"=>""}, {"PETITBOURG"=>""}, {"PETITCANAL"=>"petit-canal.ville@wanadoo.fr"}, {"POINTEAPITRE"=>"direction.generale@ville-pointeapitre.fr"}, {"POINTENOIRE"=>"sd.pointe-noire.97116@orange.fr"}, {"PORTLOUIS"=>"mairie@ville-portlouis.fr"}, {"SAINTBARTHELEMY"=>"mairie.stbarth@wanadoo.fr"}, {"SAINTCLAUDE"=>"info@saint-claude.fr"}, {"SAINTEANNE"=>""}, {"SAINTEROSE"=>""}, {"SAINTFRANCOIS"=>"mairie-saint-francois-guadeloupe@wanadoo.fr"}, {"SAINTLOUIS"=>"secret.maire-stlouis@wanadoo.fr"}, {"SAINTMARTIN"=>"jean.arnell@com-saint-martin.fr"}, {"TERREDEBAS"=>"mairie.terre.de.bas@wanadoo.fr"}, {"TERREDEHAUT"=>"terre-de-haut@orange.fr"}, {"TROISRIVIERES"=>"mairie.trois.rivieres@wanadoo.fr"}, {"VIEUXFORT"=>"mairie@ville-vieux-fort.fr"}])
    end

end
