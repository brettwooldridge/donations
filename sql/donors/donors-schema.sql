create table donors (
    donor_id int(11) not null auto_increment primary key,
    donor varchar(100) not null,
    donor_type enum('Individual','Couple','Donor group','Subsidiary','Private foundation') default 'Individual',
    former_name varchar(100),
    country varchar(40) not null, # -- Country of current residence, NOT country of origin
    affiliated_orgs varchar(1000), # -- All current and former employers, plus orgs they are board members or advisors for, but restricting to orgs that are either potential donees or other nonprofits with significant footprint in the associated communities
    bay_area boolean, # -- Whether the person currently lives in the San Francisco Bay Area
    contact_email varchar(40),
    wikipedia_page varchar(120),
    key_people varchar(2000),
    launch_date date,
    launch_date_precision enum('day','month','year','multi-year'),
    launch_date_url varchar(200),
    philosophy_url varchar(200), # -- URL to grant/giving philosophy
    grant_application_process_url varchar(200),
    foundation_center_url varchar(200),
    youtube_username varchar(100),
    instagram_username varchar(100),
    tumblr_subdomain varchar(100),
    medium_username varchar(100),
    pinterest_username varchar(100),
    facebook_username varchar(100),
    linkedin_username varchar(100),
    timelines_wiki_page varchar(100),
    website varchar(100),
    donations_url varchar(1000),
    income int(12),
    notes varchar(2000) default null,
    twitter_username varchar(40),
    lesswrong_username varchar(40),
    eaf_username varchar(40),
    eahub_username varchar(40),
    gratipay_username varchar(40),
    patreon_username varchar(40),
    predictionbook_username varchar(40),
    github_username varchar(40),
    unique key donor(`donor`)
) ENGINE=InnoDB AUTO_INCREMENT=15239276 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;