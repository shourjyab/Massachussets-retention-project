//staffing retention data
//2009 data 

import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2009.xlsx", sheet("Sheet1")
rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2009 
drop in 1/2
drop in 391

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace
save staff_reten09
clear 

//2010 data
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2010.xlsx", sheet("Sheet1")

rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2010 
drop in 1/2
drop in 385

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace

save staff_reten10
clear

//2011 data 
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2011.xlsx", sheet("Sheet1")

rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2011 
drop in 1/2
drop in 382

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace

save staff_reten11
clear

//2012 data 
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2012.xlsx", sheet("Sheet1")

rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2012 
drop in 1/2
drop in 390

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace

save staff_reten12
clear

//2013 data 
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2013.xlsx", sheet("Sheet1")

rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2013 
drop in 1/2
drop in 396

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace

save staff_reten13
clear

//2014 data 
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2014.xlsx", sheet("Sheet1")

rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2014 
drop in 1/2
drop in 401

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace

save staff_reten14
clear

//2015 data 
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation\2015.xlsx", sheet("Sheet1")

rename A district_name
rename B district_id
rename C super_tot
rename D super_retain
rename E super_retain_rate
rename F p_tot

rename G p_retain
rename H p_retain_rate
rename I teach_tot
rename J teach_retain
rename K teach_retain_rate

generate year=2015 
drop in 1/2
drop in 401

destring district_id super_tot super_retain super_retain_rate p_tot p_retain p_retain_rate teach_tot teach_retain teach_retain_rate, replace

save staff_reten15
clear

use staff_reten09
append using staff_reten10
append using staff_reten11
append using staff_reten12
append using staff_reten13
append using staff_reten14
append using staff_reten15

save staff_retenc
clear

use staff_retenc

histogram (super_retain_rate), freq 
histogram (p_retain_rate), freq 
histogram (teach_retain_rate), freq 

clear
