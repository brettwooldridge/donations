create table money_moved(
  move_id int(11) not null auto_increment primary key,
  influencer varchar(100),
  identified_donees varchar(200),
  identified_donors varchar(200),
  amount float(14,2),
  start_date date,
  end_date date,
  document_url varchar(200),
  document_title varchar(200),
  notes varchar(1000)
)  ENGINE=InnoDB AUTO_INCREMENT=15239276 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into money_moved(influencer, identified_donees, identified_donors, amount, start_date, end_date, document_url, document_title,notes) values 
  # -- 2015 end-of-year donations
  ('GiveWell','GiveDirectly','Good Ventures/GiveWell top and standout charities',34750000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','GiveDirectly',NULL,19364385,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Against Malaria Foundation',22845518,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Against Malaria Foundation',NULL,15445609,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Deworm the World Initiative','Good Ventures/GiveWell top and standout charities',10800000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Deworm the World Initiative','Deworm the World Initiative',1080068,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Schistosomiasis Control Initiative','Good Ventures/GiveWell top and standout charities',1000000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Schistosomiasis Control Initiative',NULL,2657389,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Iodine Global Network','Good Ventures/GiveWell top and standout charities',250000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Iodine Global Network',NULL,609685,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Development Media International','Good Ventures/GiveWell top and standout charities',250000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Development Media International',NULL,249920,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Global Alliance for Improved Nutrition','Good Ventures/GiveWell top and standout charities',250000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Global Alliance for Improved Nutrition',NULL,244309,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Living Goods','Good Ventures/GiveWell top and standout charities',250000,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','All donations are documented'),
  ('GiveWell','Living Goods',NULL,88896,'2015-02-01','2016-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2015 Annual Review','Totality of donations excluding those from Good Ventures'),
  # -- 2014 end-of-year donations
  ('GiveWell','Against Malaria Foundation','Good Ventures/GiveWell top and standout charities',5066667,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Against Malaria Foundation',NULL,4434478,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','GiveDirectly','Good Ventures/GiveWell top and standout charities',5013333,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Against Malaria Foundation',NULL,4061487,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Schistosomiasis Control Initiative','Good Ventures/GiveWell top and standout charities',3013333,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Schistosomiasis Control Initiative',NULL,3340403,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Schistosomiasis Control Initiative','Good Ventures/GiveWell top and standout charities',3013333,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Deworm the World Initiative',NULL,878044,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Development Media International','Good Ventures/GiveWell top and standout charities',350000,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Development Media International',NULL,162132,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Living Goods','Good Ventures/GiveWell top and standout charities',350000,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Living Goods',NULL,64833,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Global Alliance for Improved Nutrition','Good Ventures/GiveWell top and standout charities',350000,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Global Alliance for Improved Nutrition',NULL,34792,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Global Alliance for Improved Nutrition','Good Ventures/GiveWell top and standout charities',350000,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','All donations are documented'),
  ('GiveWell','Iodine Global Network',NULL,28530,'2014-02-01','2015-01-31','https://drive.google.com/file/d/0B8ompSd8S_anWWdlanlySzBOeDQ/view','GiveWell Metrics Report - 2014 Annual Review','Totality of donations excluding those from Good Ventures'),
  # -- 2013 end-of-year donations
  ('GiveWell','GiveDirectly','Good Ventures/GiveWell top and standout charities',7000000,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','All donations are documented'),
  ('GiveWell','GiveDirectly',NULL,3482865,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Against Malaria Foundation',NULL,2490588,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Schistosomiasis Control Initiative','Good Ventures/GiveWell top and standout charities',750000,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','All donations are documented'),
  ('GiveWell','Schistosomiasis Control Initiative',NULL,1440184,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','Totality of donations excluding those from Good Ventures'),
  ('GiveWell','Deworm the World Initiative','Good Ventures/GiveWell top and standout charities',1500000,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','All donations are documented'),
  ('GiveWell','Deworm the World Initiative',NULL,642836,'2013-02-01','2014-01-31','https://drive.google.com/file/d/0B8ompSd8S_anakRyR0p4bkNsRWM/view','GiveWell Metrics Report - 2013 Annual Review','Totality of donations excluding those from Good Ventures');