create table donees (
    donee_id int(11) not null auto_increment primary key,
    donee varchar(100) not null,
    former_name varchar(100),
    country varchar(40), # -- Country of main activity
    bay_area boolean, # -- Whether the person currently lives in the San Francisco Bay Area
    facebook_username varchar(100),
    website varchar(100),
    donate_page varchar(100),
    donor_list_page varchar(100),
    transparency_and_financials_page varchar(100),
    donation_case_page varchar(1000), # -- The most recent case(s) made for donations to the org
    donation_statistics_page varchar(1000),
    contact_email varchar(40),
    twitter_username varchar(40),
    eahub_username varchar(40),
    wikipedia_page varchar(100),
    givewell_review varchar(100),
    open_phil_grant_review varchar(200),
    key_people varchar(2000),
    cause_area varchar(2000),
    recommenders varchar(2000),
    notes varchar(2000) default null,
    unique key donee(`donee`)
) ENGINE=InnoDB AUTO_INCREMENT=15239276 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into donees(donee, former_name, country, bay_area, facebook_username, website, donate_page, donor_list_page, transparency_and_financials_page, donation_case_page, donation_statistics_page, twitter_username, eahub_username, wikipedia_page, givewell_review, open_phil_grant_review, key_people, cause_area, recommenders) values
  ('Machine Intelligence Research Institute','Singularity Institute for Artificial Intelligence','United States',true,'MachineIntelligenceResearchInstitute','https://intelligence.org','https://intelligence.org/donate/','https://intelligence.org/topdonors/','https://intelligence.org/transparency/','http://effective-altruism.com/ea/12n/miri_update_and_fundraising_case/',NULL,'MIRIBerkeley','miri','https://en.wikipedia.org/wiki/Machine_Intelligence_Research_Institute',NULL,'http://www.openphilanthropy.org/focus/global-catastrophic-risks/potential-risks-advanced-artificial-intelligence/machine-intelligence-research-institute-general-support','Eliezer Yudkowsky,Nate Soares,Luke Muehlhauser','Existential risk/unfriendly AI',NULL),
  ('Against Malaria Foundation',NULL,'United Kingdom',false,'AgainstMalaria','https://www.againstmalaria.com/','https://www.againstmalaria.com/Donation.aspx','https://www.againstmalaria.com/Donations.aspx','https://www.againstmalaria.com/Transparency.aspx',NULL,'https://www.againstmalaria.com/DonationStatistics.aspx','againstmalaria','against-malaria-foundation','https://en.wikipedia.org/wiki/Against_Malaria_Foundation','http://www.givewell.org/charities/against-malaria-foundation',NULL,'Rob Mather','Global health/malaria','GiveWell,Giving What We Can,The Life You Can Save,Charity Science'),
  ('Centre for Effective Altruism',NULL,'United Kingdom',false,'CentreforEffectiveAltruism','https://www.centreforeffectivealtruism.org/','https://www.centreforeffectivealtruism.org/donate/',NULL,NULL,'https://www.centreforeffectivealtruism.org/fundraising/',NULL,NULL,'centre-effective-altruism',NULL,NULL,NULL,'William MacAskill','Effective altruism',NULL),
  ('EA Giving Group',NULL,'United States',true,NULL,'https://docs.google.com/spreadsheets/d/1H2hF3SaO0_QViYq2j1E7mwoz3sDjdf9pdtuBcrq7pRU/edit#gid=0','https://docs.google.com/forms/d/e/1FAIpQLScFYVJs3Inhmg50eGyENNg3CRvbfQ-L-KNJyywYtwl67dc56w/viewform',NULL,NULL,'blog.givewell.org/2016/12/09/staff-members-personal-donations-giving-season-2016/',NULL,NULL,NULL,NULL,NULL,NULL,'Nick Beckstead','Existential risk/far future/trajectory improvement',NULL),
  ('GiveWell top charities',NULL,'United States',true,'GiveWell.org','http://www.givewell.org','https://secure.givewell.org/',NULL,NULL,'http://blog.givewell.org/2016/11/28/updated-top-charities-giving-season-2016/','http://www.givewell.org/about/impact', 'givewell','givewell','https://en.wikipedia.org/wiki/GiveWell#Top-rated_charities',NULL,NULL,'Holden Karnofsky,Elie Hassenfeld','Charity evaluation/global health/poverty',NULL),
  ('GiveWell',NULL,'United States',true,'GiveWell.org','http://www.givewell.org','https://secure.givewell.org/support-givewell',NULL,'http://www.givewell.org/about/official-records','http://blog.givewell.org/2015/12/25/december-2015-update-on-givewells-funding-needs/',NULL, 'givewell','givewell','https://en.wikipedia.org/wiki/GiveWell',NULL,NULL,'Holden Karnofsky,Elie Hassenfeld','Charity evaluation/global health/poverty',NULL),
  ('80000 Hours',NULL,'United Kingdom',false,'80000Hours','https://80000hours.org/','https://80000hours.org/support-us/donate/','https://80000hours.org/about/donors/','https://80000hours.org/about/credibility/evaluations/','http://effective-altruism.com/ea/15d/why_donate_to_80000_hours/',NULL,'80000hours',NULL,'https://en.wikipedia.org/wiki/80%2C000_Hours',NULL,NULL,'William MacAskill,Benjamin Todd,Robert Wiblin','Career coaching/life guidance',NULL),
  ('Animal Charity Evaluators',NULL,'United States',false,'AnimalCharityEvaluators','http://www.animalcharityevaluators.org/',NULL,'https://animalcharityevaluators.org/about/top-donors/','https://animalcharityevaluators.org/about/transparency/',NULL,NULL,'AnimalCharityEv','animal-charity-evaluators','https://en.wikipedia.org/wiki/User:Riceissa/Animal_Charity_Evaluators',NULL,NULL,'Jon Bockman','Animal welfare/Charity evaluation',NULL),
  ('.impact',NULL,NULL,false,'https://www.facebook.com/groups/dotimpact/','http://dotimpact.im/','http://dotimpact.causevox.com/',NULL,NULL,'http://dotimpact.causevox.com/',NULL,NULL,NULL,NULL,NULL,NULL,'Peter Hurford,Tom Ash','Effective altruism/Community project coordination',NULL),
  ('Vegan Outreach',NULL,'United States',false,'veganoutreach','http://veganoutreach.org','http://veganoutreach.org/donate/',NULL,NULL,NULL,NULL,'veganoutreach',NULL,'https://en.wikipedia.org/wiki/Vegan_Outreach',NULL,NULL,'Matt Ball,Jack Norris','Animal welfare/Diet change/Veganism/Leafleting',NULL),
  ('Raising for Effective Giving',NULL,'Switzerland',false,'raisingforeffectivegiving','https://reg-charity.org/','https://reg-charity.org/donate/',NULL,'https://reg-charity.org/about/transparency/',NULL,NULL,'regcharity',NULL,'https://en.wikipedia.org/wiki/Raising_for_Effective_Giving',NULL,NULL,'Liv Boeree, Igor Kurganov, Philipp Gruissem','Effective altruism/Fundraising/Poker and sports',NULL);
