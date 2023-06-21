/*
Create with the help of chatGPT, ran in python notebook ../../notebooks/1.0 Data Wrangling - DB.ipynb
with open('/Users/brettly/Sboard/projects/text-to-sql/references/sql_files/create_tables.sql', 'w') as sqlFile:
    for statement in sql_statements:
        sqlFile.write(statement)
*/

CREATE TABLE perpetrator.perpetrator (
perpetrator_id numeric PRIMARY KEY,
people_id numeric,
date_value date,
year numeric,
location text,
country text,
killed numeric,
injured numeric
);
CREATE TABLE perpetrator.people (
people_id numeric PRIMARY KEY,
name text,
height numeric,
weight numeric,
home_town text
);
CREATE TABLE college_2.classroom (
building text PRIMARY KEY,
room_number text,
capacity numeric
);
CREATE TABLE college_2.department (
dept_name text PRIMARY KEY,
building text,
budget numeric
);
CREATE TABLE college_2.course (
course_id text PRIMARY KEY,
title text,
dept_name text,
credits numeric
);
CREATE TABLE college_2.instructor (
id text PRIMARY KEY,
name text,
dept_name text,
salary numeric
);
CREATE TABLE college_2.section (
course_id text PRIMARY KEY,
sec_id text,
semester text,
year numeric,
building text,
room_number text,
time_slot_id text
);
CREATE TABLE college_2.teaches (
id text PRIMARY KEY,
course_id text,
sec_id text,
semester text,
year numeric
);
CREATE TABLE college_2.student (
id text PRIMARY KEY,
name text,
dept_name text,
tot_cred numeric
);
CREATE TABLE college_2.takes (
id text PRIMARY KEY,
course_id text,
sec_id text,
semester text,
year numeric,
grade text
);
CREATE TABLE college_2.advisor (
s_id text PRIMARY KEY,
i_id text
);
CREATE TABLE college_2.time_slot (
time_slot_id text PRIMARY KEY,
day text,
start_hr numeric,
start_min numeric,
end_hr numeric,
end_min numeric
);
CREATE TABLE college_2.prereq (
course_id text PRIMARY KEY,
prereq_id text
);
CREATE TABLE flight_company.airport (
id numeric PRIMARY KEY,
city text,
country text,
iata text,
icao text,
name text
);
CREATE TABLE flight_company.operate_company (
id numeric PRIMARY KEY,
name text,
type text,
principal_activities text,
incorporated_in text,
group_equity_shareholding numeric
);
CREATE TABLE flight_company.flight (
id numeric PRIMARY KEY,
vehicle_flight_number text,
date_value date,
pilot text,
velocity numeric,
altitude numeric,
airport_id numeric,
company_id numeric
);
CREATE TABLE icfp_1.Inst (
instid numeric PRIMARY KEY,
name text,
country text
);
CREATE TABLE icfp_1.Authors (
authid numeric PRIMARY KEY,
lname text,
fname text
);
CREATE TABLE icfp_1.Papers (
paperid numeric PRIMARY KEY,
title text
);
CREATE TABLE icfp_1.Authorship (
authid numeric PRIMARY KEY,
instid numeric,
paperid numeric,
authorder numeric
);
CREATE TABLE body_builder.body_builder (
body_builder_id numeric PRIMARY KEY,
people_id numeric,
snatch numeric,
clean_jerk numeric,
total numeric
);
CREATE TABLE body_builder.people (
people_id numeric PRIMARY KEY,
name text,
height numeric,
weight numeric,
birth_date date,
birth_place text
);
CREATE TABLE storm_record.storm (
storm_id numeric PRIMARY KEY,
name text,
dates_active date,
max_speed numeric,
damage_millions_usd numeric,
number_deaths numeric
);
CREATE TABLE storm_record.region (
region_id numeric PRIMARY KEY,
region_code text,
region_name text
);
CREATE TABLE storm_record.affected_region (
region_id numeric PRIMARY KEY,
storm_id numeric,
number_city_affected numeric
);
CREATE TABLE pilot_record.aircraft (
aircraft_id numeric PRIMARY KEY,
order_year numeric,
manufacturer text,
model text,
fleet_series text,
powertrain text,
fuel_propulsion text
);
CREATE TABLE pilot_record.pilot (
pilot_id numeric PRIMARY KEY,
pilot_name text,
rank numeric,
age numeric,
nationality text,
position text,
join_year numeric,
team text
);
CREATE TABLE pilot_record.pilot_record (
record_id numeric,
pilot_id numeric PRIMARY KEY,
aircraft_id numeric,
date_value date
);
CREATE TABLE race_track.race (
race_id numeric PRIMARY KEY,
name text,
class text,
date_value date,
track_id text
);
CREATE TABLE race_track.track (
track_id numeric PRIMARY KEY,
name text,
location text,
seating numeric,
year_opened numeric
);
CREATE TABLE academic.author (
aid numeric PRIMARY KEY,
homepage text,
name text,
oid numeric
);
CREATE TABLE academic.conference (
cid numeric PRIMARY KEY,
homepage text,
name text
);
CREATE TABLE academic.domain (
did numeric PRIMARY KEY,
name text
);
CREATE TABLE academic.domain_author (
aid numeric,
did numeric PRIMARY KEY
);
CREATE TABLE academic.domain_conference (
cid numeric,
did numeric PRIMARY KEY
);
CREATE TABLE academic.journal (
homepage text,
jid numeric PRIMARY KEY,
name text
);
CREATE TABLE academic.domain_journal (
did numeric PRIMARY KEY,
jid numeric
);
CREATE TABLE academic.keyword (
keyword text,
kid numeric PRIMARY KEY
);
CREATE TABLE academic.domain_keyword (
did numeric PRIMARY KEY,
kid numeric
);
CREATE TABLE academic.publication (
abstract text,
cid text,
citation_num numeric,
jid numeric,
pid numeric PRIMARY KEY,
reference_num numeric,
title text,
year numeric
);
CREATE TABLE academic.domain_publication (
did numeric PRIMARY KEY,
pid numeric
);
CREATE TABLE academic.organization (
continent text,
homepage text,
name text,
oid numeric PRIMARY KEY
);
CREATE TABLE academic.publication_keyword (
pid numeric,
kid numeric PRIMARY KEY
);
CREATE TABLE academic.writes (
aid numeric PRIMARY KEY,
pid numeric
);
CREATE TABLE academic.cite (
cited numeric,
citing numeric
);
CREATE TABLE department_store.Addresses (
address_id numeric PRIMARY KEY,
address_details text
);
CREATE TABLE department_store.Staff (
staff_id numeric PRIMARY KEY,
staff_gender text,
staff_name text
);
CREATE TABLE department_store.Suppliers (
supplier_id numeric PRIMARY KEY,
supplier_name text,
supplier_phone text
);
CREATE TABLE department_store.Department_Store_Chain (
dept_store_chain_id numeric PRIMARY KEY,
dept_store_chain_name text
);
CREATE TABLE department_store.Customers (
customer_id numeric PRIMARY KEY,
payment_method_code text,
customer_code text,
customer_name text,
customer_address text,
customer_phone text,
customer_email text
);
CREATE TABLE department_store.Products (
product_id numeric PRIMARY KEY,
product_type_code text,
product_name text,
product_price numeric
);
CREATE TABLE department_store.Supplier_Addresses (
supplier_id numeric PRIMARY KEY,
address_id numeric,
date_from date,
date_to date
);
CREATE TABLE department_store.Customer_Addresses (
customer_id numeric PRIMARY KEY,
address_id numeric,
date_from date,
date_to date
);
CREATE TABLE department_store.Customer_Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
order_status_code text,
order_date date
);
CREATE TABLE department_store.Department_Stores (
dept_store_id numeric PRIMARY KEY,
dept_store_chain_id numeric,
store_name text,
store_address text,
store_phone text,
store_email text
);
CREATE TABLE department_store.Departments (
department_id numeric PRIMARY KEY,
dept_store_id numeric,
department_name text
);
CREATE TABLE department_store.Order_Items (
order_item_id numeric PRIMARY KEY,
order_id numeric,
product_id numeric
);
CREATE TABLE department_store.Product_Suppliers (
product_id numeric PRIMARY KEY,
supplier_id numeric,
date_supplied_from date,
date_supplied_to date,
total_amount_purchased text,
total_value_purchased numeric
);
CREATE TABLE department_store.Staff_Department_Assignments (
staff_id numeric PRIMARY KEY,
department_id numeric,
date_assigned_from date,
job_title_code text,
date_assigned_to date
);
CREATE TABLE music_4.artist (
artist_id numeric PRIMARY KEY,
artist text,
age numeric,
famous_title text,
famous_release_date date
);
CREATE TABLE music_4.volume (
volume_id numeric PRIMARY KEY,
volume_issue text,
issue_date date,
weeks_on_top numeric,
song text,
artist_id numeric
);
CREATE TABLE music_4.music_festival (
id numeric PRIMARY KEY,
music_festival text,
date_of_ceremony date,
category text,
volume numeric,
result text
);
CREATE TABLE insurance_fnol.Customers (
customer_id numeric PRIMARY KEY,
customer_name text
);
CREATE TABLE insurance_fnol.Services (
service_id numeric PRIMARY KEY,
service_name text
);
CREATE TABLE insurance_fnol.Available_Policies (
policy_id numeric PRIMARY KEY,
policy_type_code text,
customer_phone text
);
CREATE TABLE insurance_fnol.Customers_Policies (
customer_id numeric PRIMARY KEY,
policy_id numeric,
date_opened date,
date_closed date
);
CREATE TABLE insurance_fnol.First_Notification_of_Loss (
fnol_id numeric PRIMARY KEY,
customer_id numeric,
policy_id numeric,
service_id numeric
);
CREATE TABLE insurance_fnol.Claims (
claim_id numeric PRIMARY KEY,
fnol_id numeric,
effective_date date
);
CREATE TABLE insurance_fnol.Settlements (
settlement_id numeric PRIMARY KEY,
claim_id numeric,
effective_date date,
settlement_amount numeric
);
CREATE TABLE cinema.film (
film_id numeric PRIMARY KEY,
rank_in_series numeric,
number_in_season numeric,
title text,
directed_by text,
original_air_date date,
production_code text
);
CREATE TABLE cinema.cinema (
cinema_id numeric PRIMARY KEY,
name text,
openning_year numeric,
capacity numeric,
location text
);
CREATE TABLE cinema.schedule (
cinema_id numeric PRIMARY KEY,
film_id numeric,
date_value date,
show_times_per_day numeric,
price numeric
);
CREATE TABLE decoration_competition.college (
college_id numeric PRIMARY KEY,
name text,
leader_name text,
college_location text
);
CREATE TABLE decoration_competition.member (
member_id numeric PRIMARY KEY,
name text,
country text,
college_id numeric
);
CREATE TABLE decoration_competition.round (
round_id numeric,
member_id numeric PRIMARY KEY,
decoration_theme text,
rank_in_round numeric
);
CREATE TABLE phone_market.phone (
name text,
phone_id numeric PRIMARY KEY,
memory_in_g numeric,
carrier text,
price numeric
);
CREATE TABLE phone_market.market (
market_id numeric PRIMARY KEY,
district text,
num_of_employees numeric,
num_of_shops numeric,
ranking numeric
);
CREATE TABLE phone_market.phone_market (
market_id numeric PRIMARY KEY,
phone_id text,
num_of_stock numeric
);
CREATE TABLE store_product.product (
product_id numeric PRIMARY KEY,
product text,
dimensions text,
dpi numeric,
pages_per_minute_color numeric,
max_page_size text,
interface text
);
CREATE TABLE store_product.store (
store_id numeric PRIMARY KEY,
store_name text,
type text,
area_size numeric,
number_of_product_category numeric,
ranking numeric
);
CREATE TABLE store_product.district (
district_id numeric PRIMARY KEY,
district_name text,
headquartered_city text,
city_population numeric,
city_area numeric
);
CREATE TABLE store_product.store_product (
store_id numeric PRIMARY KEY,
product_id numeric
);
CREATE TABLE store_product.store_district (
store_id numeric PRIMARY KEY,
district_id numeric
);
CREATE TABLE assets_maintenance.Third_Party_Companies (
company_id numeric PRIMARY KEY,
company_type text,
company_name text,
company_address text,
other_company_details text
);
CREATE TABLE assets_maintenance.Maintenance_Contracts (
maintenance_contract_id numeric PRIMARY KEY,
maintenance_contract_company_id numeric,
contract_start_date date,
contract_end_date date,
other_contract_details text
);
CREATE TABLE assets_maintenance.Parts (
part_id numeric PRIMARY KEY,
part_name text,
chargeable_yn text,
chargeable_amount text,
other_part_details text
);
CREATE TABLE assets_maintenance.Skills (
skill_id numeric PRIMARY KEY,
skill_code text,
skill_description text
);
CREATE TABLE assets_maintenance.Staff (
staff_id numeric PRIMARY KEY,
staff_name text,
gender text,
other_staff_details text
);
CREATE TABLE assets_maintenance.Assets (
asset_id numeric PRIMARY KEY,
maintenance_contract_id numeric,
supplier_company_id numeric,
asset_details text,
asset_make text,
asset_model text,
asset_acquired_date date,
asset_disposed_date date,
other_asset_details text
);
CREATE TABLE assets_maintenance.Asset_Parts (
asset_id numeric,
part_id numeric
);
CREATE TABLE assets_maintenance.Maintenance_Engineers (
engineer_id numeric PRIMARY KEY,
company_id numeric,
first_name text,
last_name text,
other_details text
);
CREATE TABLE assets_maintenance.Engineer_Skills (
engineer_id numeric,
skill_id numeric
);
CREATE TABLE assets_maintenance.Fault_Log (
fault_log_entry_id numeric PRIMARY KEY,
asset_id numeric,
recorded_by_staff_id numeric,
fault_log_entry_datetime date,
fault_description text,
other_fault_details text
);
CREATE TABLE assets_maintenance.Engineer_Visits (
engineer_visit_id numeric PRIMARY KEY,
contact_staff_id numeric,
engineer_id numeric,
fault_log_entry_id numeric,
fault_status text,
visit_start_datetime date,
visit_end_datetime date,
other_visit_details text
);
CREATE TABLE assets_maintenance.Part_Faults (
part_fault_id numeric PRIMARY KEY,
part_id numeric,
fault_short_name text,
fault_description text,
other_fault_details text
);
CREATE TABLE assets_maintenance.Fault_Log_Parts (
fault_log_entry_id numeric,
part_fault_id numeric,
fault_status text
);
CREATE TABLE assets_maintenance.Skills_Required_To_Fix (
part_fault_id numeric,
skill_id numeric
);
CREATE TABLE student_assessment.Addresses (
address_id numeric PRIMARY KEY,
line_1 text,
line_2 text,
city text,
zip_postcode text,
state_province_county text,
country text
);
CREATE TABLE student_assessment.People (
person_id numeric PRIMARY KEY,
first_name text,
middle_name text,
last_name text,
cell_mobile_number text,
email_address text,
login_name text,
password text
);
CREATE TABLE student_assessment.Students (
student_id numeric PRIMARY KEY,
student_details text
);
CREATE TABLE student_assessment.Courses (
course_id text PRIMARY KEY,
course_name text,
course_description text,
other_details text
);
CREATE TABLE student_assessment.People_Addresses (
person_address_id numeric PRIMARY KEY,
person_id numeric,
address_id numeric,
date_from date,
date_to date
);
CREATE TABLE student_assessment.Student_Course_Registrations (
student_id numeric PRIMARY KEY,
course_id numeric,
registration_date date
);
CREATE TABLE student_assessment.Student_Course_Attendance (
student_id numeric PRIMARY KEY,
course_id numeric,
date_of_attendance date
);
CREATE TABLE student_assessment.Candidates (
candidate_id date PRIMARY KEY,
candidate_details date
);
CREATE TABLE student_assessment.Candidate_Assessments (
candidate_id date PRIMARY KEY,
qualification text,
assessment_date date,
asessment_outcome_code text
);
CREATE TABLE dog_kennels.Breeds (
breed_code text PRIMARY KEY,
breed_name text
);
CREATE TABLE dog_kennels.Charges (
charge_id numeric PRIMARY KEY,
charge_type text,
charge_amount numeric
);
CREATE TABLE dog_kennels.Sizes (
size_code text PRIMARY KEY,
size_description text
);
CREATE TABLE dog_kennels.Treatment_Types (
treatment_type_code text PRIMARY KEY,
treatment_type_description text
);
CREATE TABLE dog_kennels.Owners (
owner_id numeric PRIMARY KEY,
first_name text,
last_name text,
street text,
city text,
state text,
zip_code text,
email_address text,
home_phone text,
cell_number text
);
CREATE TABLE dog_kennels.Dogs (
dog_id numeric PRIMARY KEY,
owner_id numeric,
abandoned_yn text,
breed_code text,
size_code text,
name text,
age text,
date_of_birth date,
gender text,
weight text,
date_arrived date,
date_adopted date,
date_departed date
);
CREATE TABLE dog_kennels.Professionals (
professional_id numeric PRIMARY KEY,
role_code text,
first_name text,
street text,
city text,
state text,
zip_code text,
last_name text,
email_address text,
home_phone text,
cell_number text
);
CREATE TABLE dog_kennels.Treatments (
treatment_id numeric PRIMARY KEY,
dog_id numeric,
professional_id numeric,
treatment_type_code text,
date_of_treatment date,
cost_of_treatment numeric
);
CREATE TABLE music_1.genre (
g_name text PRIMARY KEY,
rating text,
most_popular_in text
);
CREATE TABLE music_1.artist (
artist_name text PRIMARY KEY,
country text,
gender text,
preferred_genre text
);
CREATE TABLE music_1.files (
f_id numeric PRIMARY KEY,
artist_name text,
file_size text,
duration text,
formats text
);
CREATE TABLE music_1.song (
song_name text PRIMARY KEY,
artist_name text,
country text,
f_id numeric,
genre_is text,
rating numeric,
languages text,
releasedate date,
resolution numeric
);
CREATE TABLE company_employee.people (
people_id numeric PRIMARY KEY,
age numeric,
name text,
nationality text,
graduation_college text
);
CREATE TABLE company_employee.company (
company_id numeric PRIMARY KEY,
name text,
headquarters text,
industry text,
sales_in_billion numeric,
profits_in_billion numeric,
assets_in_billion numeric,
market_value_in_billion numeric
);
CREATE TABLE company_employee.employment (
company_id numeric PRIMARY KEY,
people_id numeric,
year_working numeric
);
CREATE TABLE farm.city (
city_id numeric PRIMARY KEY,
official_name text,
status text,
area_km_2 numeric,
population numeric,
census_ranking text
);
CREATE TABLE farm.farm (
farm_id numeric PRIMARY KEY,
year numeric,
total_horses numeric,
working_horses numeric,
total_cattle numeric,
oxen numeric,
bulls numeric,
cows numeric,
pigs numeric,
sheep_and_goats numeric
);
CREATE TABLE farm.farm_competition (
competition_id numeric PRIMARY KEY,
year numeric,
theme text,
host_city_id numeric,
hosts text
);
CREATE TABLE farm.competition_record (
competition_id numeric PRIMARY KEY,
farm_id numeric,
rank numeric
);
CREATE TABLE solvency_ii.Addresses (
address_id numeric PRIMARY KEY,
address_details text
);
CREATE TABLE solvency_ii.Locations (
location_id numeric PRIMARY KEY,
other_details text
);
CREATE TABLE solvency_ii.Products (
product_id numeric PRIMARY KEY,
product_type_code text,
product_name text,
product_price numeric
);
CREATE TABLE solvency_ii.Parties (
party_id numeric PRIMARY KEY,
party_details text
);
CREATE TABLE solvency_ii.Assets (
asset_id numeric PRIMARY KEY,
other_details text
);
CREATE TABLE solvency_ii.Channels (
channel_id numeric PRIMARY KEY,
other_details text
);
CREATE TABLE solvency_ii.Finances (
finance_id numeric PRIMARY KEY,
other_details text
);
CREATE TABLE solvency_ii.Events (
event_id numeric PRIMARY KEY,
address_id numeric,
channel_id numeric,
event_type_code text,
finance_id numeric,
location_id numeric
);
CREATE TABLE solvency_ii.Products_in_Events (
product_in_event_id numeric PRIMARY KEY,
event_id numeric,
product_id numeric
);
CREATE TABLE solvency_ii.Parties_in_Events (
party_id numeric PRIMARY KEY,
event_id numeric,
role_code text
);
CREATE TABLE solvency_ii.Agreements (
document_id numeric PRIMARY KEY,
event_id numeric
);
CREATE TABLE solvency_ii.Assets_in_Events (
asset_id numeric PRIMARY KEY,
event_id numeric
);
CREATE TABLE city_record.city (
city_id numeric PRIMARY KEY,
city text,
hanzi text,
hanyu_pinyin text,
regional_population numeric,
gdp numeric
);
CREATE TABLE city_record.match (
match_id numeric PRIMARY KEY,
date_value date,
venue text,
score text,
result text,
competition text
);
CREATE TABLE city_record.temperature (
city_id numeric PRIMARY KEY,
jan numeric,
feb numeric,
mar numeric,
apr numeric,
jun numeric,
jul numeric,
aug numeric,
sep numeric,
oct numeric,
nov numeric,
dec numeric
);
CREATE TABLE city_record.hosting_city (
year numeric PRIMARY KEY,
match_id numeric,
host_city text
);
CREATE TABLE swimming.swimmer (
id numeric PRIMARY KEY,
name text,
nationality text,
meter_100 numeric,
meter_200 text,
meter_300 text,
meter_400 text,
meter_500 text,
meter_600 text,
meter_700 text,
time text
);
CREATE TABLE swimming.stadium (
id numeric PRIMARY KEY,
name text,
capacity numeric,
city text,
country text,
opening_year numeric
);
CREATE TABLE swimming.event (
id numeric PRIMARY KEY,
name text,
stadium_id numeric,
year text
);
CREATE TABLE swimming.record (
id numeric,
result text,
swimmer_id numeric PRIMARY KEY,
event_id numeric
);
CREATE TABLE flight_2.airlines (
uid numeric PRIMARY KEY,
airline text,
abbreviation text,
country text
);
CREATE TABLE flight_2.airports (
city text,
airportcode text PRIMARY KEY,
airportname text,
country text,
countryabbrev text
);
CREATE TABLE flight_2.flights (
airline numeric PRIMARY KEY,
flightno numeric,
sourceairport text,
destairport text
);
CREATE TABLE election.county (
county_id numeric PRIMARY KEY,
county_name text,
population numeric,
zip_code text
);
CREATE TABLE election.party (
party_id numeric PRIMARY KEY,
year numeric,
party text,
governor text,
lieutenant_governor text,
comptroller text,
attorney_general text,
us_senate text
);
CREATE TABLE election.election (
election_id numeric PRIMARY KEY,
counties_represented text,
district numeric,
delegate text,
party numeric,
first_elected numeric,
committee text
);
CREATE TABLE manufactory_1.Manufacturers (
code numeric PRIMARY KEY,
name text,
headquarter text,
founder text,
revenue numeric
);
CREATE TABLE manufactory_1.Products (
code numeric PRIMARY KEY,
name text,
price numeric,
manufacturer numeric
);
CREATE TABLE debate.people (
people_id numeric PRIMARY KEY,
district text,
name text,
party text,
age numeric
);
CREATE TABLE debate.debate (
debate_id numeric PRIMARY KEY,
date_value date,
venue text,
num_of_audience numeric
);
CREATE TABLE debate.debate_people (
debate_id numeric PRIMARY KEY,
affirmative numeric,
negative numeric,
if_affirmative_win boolean
);
CREATE TABLE network_2.Person (
name text PRIMARY KEY,
age numeric,
city text,
gender text,
job text
);
CREATE TABLE network_2.PersonFriend (
name text,
friend text,
year numeric
);
CREATE TABLE local_govt_in_alabama.Services (
service_id numeric PRIMARY KEY,
service_type_code text
);
CREATE TABLE local_govt_in_alabama.Participants (
participant_id numeric PRIMARY KEY,
participant_type_code text,
participant_details text
);
CREATE TABLE local_govt_in_alabama.Events (
event_id numeric PRIMARY KEY,
service_id numeric,
event_details text
);
CREATE TABLE local_govt_in_alabama.Participants_in_Events (
event_id numeric PRIMARY KEY,
participant_id numeric
);
CREATE TABLE climbing.mountain (
mountain_id numeric PRIMARY KEY,
name text,
height numeric,
prominence numeric,
range text,
country text
);
CREATE TABLE climbing.climber (
climber_id numeric PRIMARY KEY,
name text,
country text,
time text,
points numeric,
mountain_id numeric
);
CREATE TABLE e_learning.Course_Authors_and_Tutors (
author_id numeric PRIMARY KEY,
author_tutor_atb text,
login_name text,
password text,
personal_name text,
middle_name text,
family_name text,
gender_mf text,
address_line_1 text
);
CREATE TABLE e_learning.Students (
student_id numeric PRIMARY KEY,
date_of_registration date,
date_of_latest_logon date,
login_name text,
password text,
personal_name text,
middle_name text,
family_name text
);
CREATE TABLE e_learning.Subjects (
subject_id numeric PRIMARY KEY,
subject_name text
);
CREATE TABLE e_learning.Courses (
course_id numeric PRIMARY KEY,
author_id numeric,
subject_id numeric,
course_name text,
course_description text
);
CREATE TABLE e_learning.Student_Course_Enrolment (
registration_id numeric PRIMARY KEY,
student_id numeric,
course_id numeric,
date_of_enrolment date,
date_of_completion date
);
CREATE TABLE e_learning.Student_Tests_Taken (
registration_id numeric,
date_test_taken date,
test_result text
);
CREATE TABLE scientist_1.Scientists (
ssn numeric PRIMARY KEY,
name text
);
CREATE TABLE scientist_1.Projects (
code text PRIMARY KEY,
name text,
hours numeric
);
CREATE TABLE scientist_1.AssignedTo (
scientist numeric PRIMARY KEY,
project text
);
CREATE TABLE ship_1.captain (
captain_id numeric PRIMARY KEY,
name text,
ship_id numeric,
age text,
class text,
rank text
);
CREATE TABLE ship_1.Ship (
ship_id numeric PRIMARY KEY,
name text,
type text,
built_year numeric,
class text,
flag text
);
CREATE TABLE entertainment_awards.festival_detail (
festival_id numeric PRIMARY KEY,
festival_name text,
chair_name text,
location text,
year numeric,
num_of_audience numeric
);
CREATE TABLE entertainment_awards.artwork (
artwork_id numeric PRIMARY KEY,
type text,
name text
);
CREATE TABLE entertainment_awards.nomination (
artwork_id numeric PRIMARY KEY,
festival_id numeric,
result text
);
CREATE TABLE allergy_1.Allergy_Type (
allergy text PRIMARY KEY,
allergytype text
);
CREATE TABLE allergy_1.Has_Allergy (
stuid numeric,
allergy text
);
CREATE TABLE allergy_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE imdb.actor (
aid numeric PRIMARY KEY,
gender text,
name text,
nationality text,
birth_city text,
birth_year numeric
);
CREATE TABLE imdb.copyright (
id numeric PRIMARY KEY,
msid numeric,
cid numeric
);
CREATE TABLE imdb.cast (
id numeric PRIMARY KEY,
msid numeric,
aid numeric,
role numeric
);
CREATE TABLE imdb.genre (
gid numeric PRIMARY KEY,
genre text
);
CREATE TABLE imdb.classification (
id numeric PRIMARY KEY,
msid numeric,
gid numeric
);
CREATE TABLE imdb.company (
id numeric PRIMARY KEY,
name text,
country_code text
);
CREATE TABLE imdb.director (
did numeric PRIMARY KEY,
gender text,
name text,
nationality text,
birth_city text,
birth_year numeric
);
CREATE TABLE imdb.producer (
pid numeric PRIMARY KEY,
gender text,
name text,
nationality text,
birth_city text,
birth_year numeric
);
CREATE TABLE imdb.directed_by (
id numeric PRIMARY KEY,
msid numeric,
did numeric
);
CREATE TABLE imdb.keyword (
id numeric PRIMARY KEY,
keyword text
);
CREATE TABLE imdb.made_by (
id numeric PRIMARY KEY,
msid numeric,
pid numeric
);
CREATE TABLE imdb.movie (
mid numeric PRIMARY KEY,
title text,
release_year numeric,
title_aka text,
budget text
);
CREATE TABLE imdb.tags (
id numeric PRIMARY KEY,
msid numeric,
kid numeric
);
CREATE TABLE imdb.tv_series (
sid numeric PRIMARY KEY,
title text,
release_year numeric,
num_of_seasons numeric,
num_of_episodes numeric,
title_aka text,
budget text
);
CREATE TABLE imdb.writer (
wid numeric PRIMARY KEY,
gender text,
name numeric,
nationality numeric,
num_of_episodes numeric,
birth_city text,
birth_year numeric
);
CREATE TABLE imdb.written_by (
id numeric,
msid numeric,
wid numeric
);
CREATE TABLE products_for_hire.Discount_Coupons (
coupon_id numeric PRIMARY KEY,
date_issued date,
coupon_amount numeric
);
CREATE TABLE products_for_hire.Customers (
customer_id numeric PRIMARY KEY,
coupon_id numeric,
good_or_bad_customer text,
first_name text,
last_name text,
gender_mf text,
date_became_customer date,
date_last_hire date
);
CREATE TABLE products_for_hire.Bookings (
booking_id numeric PRIMARY KEY,
customer_id numeric,
booking_status_code text,
returned_damaged_yn text,
booking_start_date date,
booking_end_date date,
count_hired text,
amount_payable numeric,
amount_of_discount numeric,
amount_outstanding numeric,
amount_of_refund numeric
);
CREATE TABLE products_for_hire.Products_for_Hire (
product_id numeric PRIMARY KEY,
product_type_code text,
daily_hire_cost numeric,
product_name text,
product_description text
);
CREATE TABLE products_for_hire.Payments (
payment_id numeric PRIMARY KEY,
booking_id numeric,
customer_id numeric,
payment_type_code text,
amount_paid_in_full_yn text,
payment_date date,
amount_due numeric,
amount_paid numeric
);
CREATE TABLE products_for_hire.Products_Booked (
booking_id numeric PRIMARY KEY,
product_id numeric,
returned_yn text,
returned_late_yn text,
booked_count numeric,
booked_amount numeric
);
CREATE TABLE products_for_hire.View_Product_Availability (
product_id numeric,
booking_id numeric,
status_date date PRIMARY KEY,
available_yn text
);
CREATE TABLE candidate_poll.candidate (
candidate_id date PRIMARY KEY,
people_id numeric,
poll_source text,
date_value date,
support_rate numeric,
consider_rate numeric,
oppose_rate numeric,
unsure_rate numeric
);
CREATE TABLE candidate_poll.people (
people_id numeric PRIMARY KEY,
sex text,
name text,
date_of_birth date,
height numeric,
weight numeric
);
CREATE TABLE chinook_1.Album (
albumid numeric PRIMARY KEY,
title text,
artistid numeric
);
CREATE TABLE chinook_1.Artist (
artistid numeric PRIMARY KEY,
name text
);
CREATE TABLE chinook_1.Customer (
customerid numeric PRIMARY KEY,
firstname text,
lastname text,
company text,
address text,
city text,
state text,
country text,
postalcode text,
phone text,
fax text,
email text,
supportrepid numeric
);
CREATE TABLE chinook_1.Employee (
employeeid numeric PRIMARY KEY,
lastname text,
firstname text,
title text,
reportsto numeric,
birthdate date,
hiredate date,
address text,
city text,
state text,
country text,
postalcode text,
phone text,
fax text,
email text
);
CREATE TABLE chinook_1.Genre (
genreid numeric PRIMARY KEY,
name text
);
CREATE TABLE chinook_1.Invoice (
invoiceid numeric PRIMARY KEY,
customerid numeric,
invoicedate date,
billingaddress text,
billingcity text,
billingstate text,
billingcountry text,
billingpostalcode text,
total numeric
);
CREATE TABLE chinook_1.InvoiceLine (
invoicelineid numeric PRIMARY KEY,
invoiceid numeric,
trackid numeric,
unitprice numeric,
quantity numeric
);
CREATE TABLE chinook_1.MediaType (
mediatypeid numeric PRIMARY KEY,
name text
);
CREATE TABLE chinook_1.Playlist (
playlistid numeric PRIMARY KEY,
name text
);
CREATE TABLE chinook_1.PlaylistTrack (
playlistid numeric PRIMARY KEY,
trackid numeric
);
CREATE TABLE chinook_1.Track (
trackid numeric PRIMARY KEY,
name text,
albumid numeric,
mediatypeid numeric,
genreid numeric,
composer text,
milliseconds numeric,
bytes numeric,
unitprice numeric
);
CREATE TABLE flight_4.routes (
rid numeric PRIMARY KEY,
dst_apid numeric,
dst_ap text,
src_apid numeric,
src_ap text,
alid numeric,
airline text,
codeshare text
);
CREATE TABLE flight_4.airports (
apid numeric PRIMARY KEY,
name text,
city text,
country text,
x numeric,
y numeric,
elevation numeric,
iata text,
icao text
);
CREATE TABLE flight_4.airlines (
alid numeric PRIMARY KEY,
name text,
iata text,
icao text,
callsign text,
country text,
active text
);
CREATE TABLE pets_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE pets_1.Has_Pet (
stuid numeric,
petid numeric
);
CREATE TABLE pets_1.Pets (
petid numeric PRIMARY KEY,
pettype text,
pet_age numeric,
weight numeric
);
CREATE TABLE dorm_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE dorm_1.Dorm (
dormid numeric,
dorm_name text,
student_capacity numeric,
gender text
);
CREATE TABLE dorm_1.Dorm_amenity (
amenid numeric,
amenity_name text
);
CREATE TABLE dorm_1.Has_amenity (
dormid numeric,
amenid numeric
);
CREATE TABLE dorm_1.Lives_in (
stuid numeric,
dormid numeric,
room_number numeric
);
CREATE TABLE journal_committee.journal (
journal_id numeric PRIMARY KEY,
date_value date,
theme text,
sales numeric
);
CREATE TABLE journal_committee.editor (
editor_id numeric PRIMARY KEY,
name text,
age numeric
);
CREATE TABLE journal_committee.journal_committee (
editor_id numeric PRIMARY KEY,
journal_id numeric,
work_type text
);
CREATE TABLE flight_1.flight (
flno numeric PRIMARY KEY,
origin text,
destination text,
distance numeric,
departure_date date,
arrival_date date,
price numeric,
aid numeric
);
CREATE TABLE flight_1.aircraft (
aid numeric PRIMARY KEY,
name text,
distance numeric
);
CREATE TABLE flight_1.employee (
eid numeric PRIMARY KEY,
name text,
salary numeric
);
CREATE TABLE flight_1.certificate (
eid numeric PRIMARY KEY,
aid numeric
);
CREATE TABLE medicine_enzyme_interaction.medicine (
id numeric PRIMARY KEY,
name text,
trade_name text,
fda_approved text
);
CREATE TABLE medicine_enzyme_interaction.enzyme (
id numeric PRIMARY KEY,
name text,
location text,
product text,
chromosome text,
omim numeric,
porphyria text
);
CREATE TABLE medicine_enzyme_interaction.medicine_enzyme_interaction (
enzyme_id numeric PRIMARY KEY,
medicine_id numeric,
interaction_type text
);
CREATE TABLE local_govt_and_lot.Customers (
customer_id numeric PRIMARY KEY,
customer_details text
);
CREATE TABLE local_govt_and_lot.Properties (
property_id numeric PRIMARY KEY,
property_type_code text,
property_address text,
other_details text
);
CREATE TABLE local_govt_and_lot.Residents (
resident_id numeric PRIMARY KEY,
property_id numeric,
date_moved_in date,
date_moved_out date,
other_details text
);
CREATE TABLE local_govt_and_lot.Organizations (
organization_id numeric PRIMARY KEY,
parent_organization_id numeric,
organization_details text
);
CREATE TABLE local_govt_and_lot.Services (
service_id numeric PRIMARY KEY,
organization_id numeric,
service_type_code text,
service_details text
);
CREATE TABLE local_govt_and_lot.Residents_Services (
resident_id numeric PRIMARY KEY,
service_id numeric,
date_moved_in date,
property_id numeric,
date_requested date,
date_provided date,
other_details text
);
CREATE TABLE local_govt_and_lot.Things (
thing_id numeric PRIMARY KEY,
organization_id numeric,
type_of_thing_code text,
service_type_code text,
service_details text
);
CREATE TABLE local_govt_and_lot.Customer_Events (
customer_event_id numeric PRIMARY KEY,
customer_id numeric,
date_moved_in date,
property_id numeric,
resident_id numeric,
thing_id numeric
);
CREATE TABLE local_govt_and_lot.Customer_Event_Notes (
customer_event_note_id numeric PRIMARY KEY,
customer_event_id numeric,
service_type_code text,
resident_id numeric,
property_id numeric,
date_moved_in date
);
CREATE TABLE local_govt_and_lot.Timed_Status_of_Things (
thing_id numeric PRIMARY KEY,
date_and_date date,
status_of_thing_code text
);
CREATE TABLE local_govt_and_lot.Timed_Locations_of_Things (
thing_id numeric PRIMARY KEY,
date_and_time date,
location_code text
);
CREATE TABLE station_weather.train (
id numeric PRIMARY KEY,
train_number numeric,
name text,
origin text,
destination text,
time text,
interval text
);
CREATE TABLE station_weather.station (
id numeric PRIMARY KEY,
network_name text,
services text,
local_authority text
);
CREATE TABLE station_weather.route (
train_id numeric PRIMARY KEY,
station_id numeric
);
CREATE TABLE station_weather.weekly_weather (
station_id numeric PRIMARY KEY,
day_of_week text,
high_temperature numeric,
low_temperature numeric,
precipitation numeric,
wind_speed_mph numeric
);
CREATE TABLE shop_membership.member (
member_id numeric PRIMARY KEY,
card_number text,
name text,
hometown text,
level numeric
);
CREATE TABLE shop_membership.branch (
branch_id numeric PRIMARY KEY,
name text,
open_year text,
address_road text,
city text,
membership_amount text
);
CREATE TABLE shop_membership.membership_register_branch (
member_id numeric PRIMARY KEY,
branch_id text,
register_year text
);
CREATE TABLE shop_membership.purchase (
member_id numeric PRIMARY KEY,
branch_id text,
year text,
total_pounds numeric
);
CREATE TABLE driving_school.Addresses (
address_id numeric PRIMARY KEY,
line_1_number_building text,
city text,
zip_postcode text,
state_province_county text,
country text
);
CREATE TABLE driving_school.Staff (
staff_id numeric PRIMARY KEY,
staff_address_id numeric,
nickname text,
first_name text,
middle_name text,
last_name text,
date_of_birth date,
date_joined_staff date,
date_left_staff date
);
CREATE TABLE driving_school.Vehicles (
vehicle_id numeric PRIMARY KEY,
vehicle_details text
);
CREATE TABLE driving_school.Customers (
customer_id numeric PRIMARY KEY,
customer_address_id numeric,
customer_status_code text,
date_became_customer date,
date_of_birth date,
first_name text,
last_name text,
amount_outstanding numeric,
email_address text,
phone_number text,
cell_mobile_phone_number text
);
CREATE TABLE driving_school.Customer_Payments (
customer_id numeric PRIMARY KEY,
datetime_payment date,
payment_method_code text,
amount_payment numeric
);
CREATE TABLE driving_school.Lessons (
lesson_id numeric PRIMARY KEY,
customer_id numeric,
lesson_status_code text,
staff_id numeric,
vehicle_id numeric,
lesson_date date,
lesson_time text,
price numeric
);
CREATE TABLE concert_singer.stadium (
stadium_id numeric PRIMARY KEY,
location text,
name text,
capacity numeric,
highest numeric,
lowest numeric,
average numeric
);
CREATE TABLE concert_singer.singer (
singer_id numeric PRIMARY KEY,
name text,
country text,
song_name text,
song_release_year text,
age numeric,
is_male boolean
);
CREATE TABLE concert_singer.concert (
concert_id numeric PRIMARY KEY,
concert_name text,
theme text,
stadium_id text,
year text
);
CREATE TABLE concert_singer.singer_in_concert (
concert_id numeric PRIMARY KEY,
singer_id text
);
CREATE TABLE music_2.Songs (
songid numeric PRIMARY KEY,
title text
);
CREATE TABLE music_2.Albums (
aid numeric PRIMARY KEY,
title text,
year numeric,
label text,
type text
);
CREATE TABLE music_2.Band (
id numeric PRIMARY KEY,
firstname text,
lastname text
);
CREATE TABLE music_2.Instruments (
songid numeric PRIMARY KEY,
bandmateid numeric,
instrument text
);
CREATE TABLE music_2.Performance (
songid numeric PRIMARY KEY,
bandmate numeric,
stageposition text
);
CREATE TABLE music_2.Tracklists (
albumid numeric PRIMARY KEY,
position numeric,
songid numeric
);
CREATE TABLE music_2.Vocals (
songid numeric PRIMARY KEY,
bandmate numeric,
type text
);
CREATE TABLE sports_competition.club (
club_id numeric PRIMARY KEY,
name text,
region text,
start_year text
);
CREATE TABLE sports_competition.club_rank (
rank numeric PRIMARY KEY,
club_id numeric,
gold numeric,
silver numeric,
bronze numeric,
total numeric
);
CREATE TABLE sports_competition.player (
player_id numeric PRIMARY KEY,
name text,
position text,
club_id numeric,
apps numeric,
tries numeric,
goals text,
points numeric
);
CREATE TABLE sports_competition.competition (
competition_id numeric PRIMARY KEY,
year numeric,
competition_type text,
country text
);
CREATE TABLE sports_competition.competition_result (
competition_id numeric PRIMARY KEY,
club_id_1 numeric,
club_id_2 numeric,
score text
);
CREATE TABLE railway.railway (
railway_id numeric PRIMARY KEY,
railway text,
builder text,
built text,
wheels text,
location text,
objectnumber text
);
CREATE TABLE railway.train (
train_id numeric PRIMARY KEY,
train_num text,
name text,
from_value text,
arrival text,
railway_id numeric
);
CREATE TABLE railway.manager (
manager_id numeric PRIMARY KEY,
name text,
country text,
working_year_starts text,
age numeric,
level numeric
);
CREATE TABLE railway.railway_manage (
railway_id numeric PRIMARY KEY,
manager_id numeric,
from_year text
);
CREATE TABLE inn_1.Rooms (
roomid text PRIMARY KEY,
roomname text,
beds numeric,
bedtype text,
maxoccupancy numeric,
baseprice numeric,
decor text
);
CREATE TABLE inn_1.Reservations (
code numeric PRIMARY KEY,
room text,
checkin text,
checkout text,
rate numeric,
lastname text,
firstname text,
adults numeric,
kids numeric
);
CREATE TABLE museum_visit.museum (
museum_id numeric PRIMARY KEY,
name text,
num_of_staff numeric,
open_year text
);
CREATE TABLE museum_visit.visitor (
id numeric PRIMARY KEY,
name text,
level_of_membership numeric,
age numeric
);
CREATE TABLE museum_visit.visit (
museum_id numeric PRIMARY KEY,
visitor_id text,
num_of_ticket numeric,
total_spent numeric
);
CREATE TABLE browser_web.Web_client_accelerator (
id numeric PRIMARY KEY,
name text,
operating_system text,
client text,
connection text
);
CREATE TABLE browser_web.browser (
id numeric PRIMARY KEY,
name text,
market_share numeric
);
CREATE TABLE browser_web.accelerator_compatible_browser (
accelerator_id numeric PRIMARY KEY,
browser_id numeric,
compatible_since_year numeric
);
CREATE TABLE baseball_1.all_star (
player_id text,
year numeric,
game_num numeric,
game_id text,
team_id text,
league_id text,
gp numeric,
starting_pos numeric
);
CREATE TABLE baseball_1.appearances (
year numeric,
team_id text,
league_id text,
player_id text,
g_all numeric,
gs numeric,
g_batting numeric,
g_defense numeric,
g_p numeric,
g_c numeric,
g_1b numeric,
g_2b numeric,
g_3b numeric,
g_ss numeric,
g_lf numeric,
g_cf numeric,
g_rf numeric,
g_of numeric,
g_dh numeric,
g_ph numeric,
g_pr numeric
);
CREATE TABLE baseball_1.manager_award (
player_id text,
award_id text,
year numeric,
league_id text,
tie text,
notes numeric
);
CREATE TABLE baseball_1.player_award (
player_id text,
award_id text,
year numeric,
league_id text,
tie text,
notes text
);
CREATE TABLE baseball_1.manager_award_vote (
award_id text,
year numeric,
league_id text,
player_id text,
points_won numeric,
points_max numeric,
votes_first numeric
);
CREATE TABLE baseball_1.player_award_vote (
award_id text,
year numeric,
league_id text,
player_id text,
points_won numeric,
points_max numeric,
votes_first numeric
);
CREATE TABLE baseball_1.batting (
player_id text,
year numeric,
stint numeric,
team_id text,
league_id text,
g numeric,
ab numeric,
r numeric,
h numeric,
double numeric,
triple numeric,
hr numeric,
rbi numeric,
sb numeric,
cs numeric,
bb numeric,
so numeric,
ibb numeric,
hbp numeric,
sh numeric,
sf numeric,
g_idp numeric
);
CREATE TABLE baseball_1.batting_postseason (
year numeric,
round text,
player_id text,
team_id text,
league_id text,
g numeric,
ab numeric,
r numeric,
h numeric,
double numeric,
triple numeric,
hr numeric,
rbi numeric,
sb numeric,
cs numeric,
bb numeric,
so numeric,
ibb numeric,
hbp numeric,
sh numeric,
sf numeric,
g_idp numeric
);
CREATE TABLE baseball_1.player_college (
player_id text,
college_id text,
year numeric
);
CREATE TABLE baseball_1.fielding (
player_id text,
year numeric,
stint numeric,
team_id text,
league_id text,
pos text,
g numeric,
gs numeric,
inn_outs numeric,
po numeric,
a numeric,
e numeric,
dp numeric,
pb numeric,
wp numeric,
sb numeric,
cs numeric,
zr numeric
);
CREATE TABLE baseball_1.fielding_outfield (
player_id text,
year numeric,
stint numeric,
glf numeric,
gcf numeric,
grf numeric
);
CREATE TABLE baseball_1.fielding_postseason (
player_id text,
year numeric,
team_id text,
league_id text,
round text,
pos text,
g numeric,
gs numeric,
inn_outs numeric,
po numeric,
a numeric,
e numeric,
dp numeric,
tp numeric,
pb numeric,
sb numeric,
cs numeric
);
CREATE TABLE baseball_1.hall_of_fame (
player_id text,
yearid numeric,
votedby text,
ballots numeric,
needed numeric,
votes numeric,
inducted text,
category text,
needed_note text
);
CREATE TABLE baseball_1.home_game (
year numeric,
league_id text,
team_id text,
park_id text,
span_first text,
span_last text,
games numeric,
openings numeric,
attendance numeric
);
CREATE TABLE baseball_1.manager (
player_id text,
year numeric,
team_id text,
league_id text,
inseason numeric,
g numeric,
w numeric,
l numeric,
rank numeric,
plyr_mgr text
);
CREATE TABLE baseball_1.manager_half (
player_id text,
year numeric,
team_id text,
league_id text,
inseason numeric,
half numeric,
g numeric,
w numeric,
l numeric,
rank numeric
);
CREATE TABLE baseball_1.player (
player_id text,
birth_year numeric,
birth_month numeric,
birth_day numeric,
birth_country text,
birth_state text,
birth_city text,
death_year numeric,
death_month numeric,
death_day numeric,
death_country text,
death_state text,
death_city text,
name_first text,
name_last text,
name_given text,
weight numeric,
height numeric,
bats text,
throws text,
debut text,
final_game text,
retro_id text,
bbref_id text
);
CREATE TABLE baseball_1.park (
park_id text,
park_name text,
park_alias text,
city text,
state text,
country text
);
CREATE TABLE baseball_1.pitching (
player_id text,
year numeric,
stint numeric,
team_id text,
league_id text,
w numeric,
l numeric,
g numeric,
gs numeric,
cg numeric,
sho numeric,
sv numeric,
ipouts numeric,
h numeric,
er numeric,
hr numeric,
bb numeric,
so numeric,
baopp numeric,
era numeric,
ibb numeric,
wp numeric,
hbp numeric,
bk numeric,
bfp numeric,
gf numeric,
r numeric,
sh numeric,
sf numeric,
g_idp numeric
);
CREATE TABLE baseball_1.pitching_postseason (
player_id text,
year numeric,
round text,
team_id text,
league_id text,
w numeric,
l numeric,
g numeric,
gs numeric,
cg numeric,
sho numeric,
sv numeric,
ipouts numeric,
h numeric,
er numeric,
hr numeric,
bb numeric,
so numeric,
baopp text,
era numeric,
ibb numeric,
wp numeric,
hbp numeric,
bk numeric,
bfp numeric,
gf numeric,
r numeric,
sh numeric,
sf numeric,
g_idp numeric
);
CREATE TABLE baseball_1.salary (
year numeric,
team_id text,
league_id text,
player_id text,
salary numeric
);
CREATE TABLE baseball_1.college (
college_id text,
name_full text,
city text,
state text,
country text
);
CREATE TABLE baseball_1.postseason (
year numeric,
round text,
team_id_winner text,
league_id_winner text,
team_id_loser text,
league_id_loser text,
wins numeric,
losses numeric,
ties numeric
);
CREATE TABLE baseball_1.team (
year numeric,
league_id text,
team_id text,
franchise_id text,
div_id text,
rank numeric,
g numeric,
ghome numeric,
w numeric,
l numeric,
div_win text,
wc_win text,
lg_win text,
ws_win text,
r numeric,
ab numeric,
h numeric,
double numeric,
triple numeric,
hr numeric,
bb numeric,
so numeric,
sb numeric,
cs numeric,
hbp numeric,
sf numeric,
ra numeric,
er numeric,
era numeric,
cg numeric,
sho numeric,
sv numeric,
ipouts numeric,
ha numeric,
hra numeric,
bba numeric,
soa numeric,
e numeric,
dp numeric,
fp numeric,
name text,
park text,
attendance numeric,
bpf numeric,
ppf numeric,
team_id_br text,
team_id_lahman45 text,
team_id_retro text
);
CREATE TABLE baseball_1.team_franchise (
franchise_id text,
franchise_name text,
active text,
na_assoc text
);
CREATE TABLE baseball_1.team_half (
year numeric,
league_id text,
team_id text,
half numeric,
div_id text,
div_win text,
rank numeric,
g numeric,
w numeric,
l numeric
);
CREATE TABLE architecture.architect (
id text PRIMARY KEY,
name text,
nationality text,
gender text
);
CREATE TABLE architecture.bridge (
architect_id numeric,
id numeric PRIMARY KEY,
name text,
location text,
length_meters numeric,
length_feet numeric
);
CREATE TABLE architecture.mill (
architect_id numeric,
id numeric PRIMARY KEY,
location text,
name text,
type text,
built_year numeric,
notes text
);
CREATE TABLE csu_1.Campuses (
id numeric PRIMARY KEY,
campus text,
location text,
county text,
year numeric
);
CREATE TABLE csu_1.csu_fees (
campus numeric PRIMARY KEY,
year numeric,
campusfee numeric
);
CREATE TABLE csu_1.degrees (
year numeric PRIMARY KEY,
campus numeric,
degrees numeric
);
CREATE TABLE csu_1.discipline_enrollments (
campus numeric PRIMARY KEY,
discipline numeric,
year numeric,
undergraduate numeric,
graduate numeric
);
CREATE TABLE csu_1.enrollments (
campus numeric PRIMARY KEY,
year numeric,
totalenrollment_ay numeric,
fte_ay numeric
);
CREATE TABLE csu_1.faculty (
campus numeric,
year numeric,
faculty numeric
);
CREATE TABLE tracking_orders.Customers (
customer_id numeric PRIMARY KEY,
customer_name text,
customer_details text
);
CREATE TABLE tracking_orders.Invoices (
invoice_number numeric PRIMARY KEY,
invoice_date date,
invoice_details text
);
CREATE TABLE tracking_orders.Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
order_status text,
date_order_placed date,
order_details text
);
CREATE TABLE tracking_orders.Products (
product_id numeric PRIMARY KEY,
product_name text,
product_details text
);
CREATE TABLE tracking_orders.Order_Items (
order_item_id numeric PRIMARY KEY,
product_id numeric,
order_id numeric,
order_item_status text,
order_item_details text
);
CREATE TABLE tracking_orders.Shipments (
shipment_id numeric PRIMARY KEY,
order_id numeric,
invoice_number numeric,
shipment_tracking_number text,
shipment_date date,
other_shipment_details text
);
CREATE TABLE tracking_orders.Shipment_Items (
shipment_id numeric,
order_item_id numeric
);
CREATE TABLE insurance_policies.Customers (
customer_id numeric PRIMARY KEY,
customer_details text
);
CREATE TABLE insurance_policies.Customer_Policies (
policy_id numeric PRIMARY KEY,
customer_id numeric,
policy_type_code text,
start_date date,
end_date date
);
CREATE TABLE insurance_policies.Claims (
claim_id numeric PRIMARY KEY,
policy_id numeric,
date_claim_made date,
date_claim_settled date,
amount_claimed numeric,
amount_settled numeric
);
CREATE TABLE insurance_policies.Settlements (
settlement_id numeric PRIMARY KEY,
claim_id numeric,
date_claim_made date,
date_claim_settled date,
amount_claimed numeric,
amount_settled numeric,
customer_policy_id numeric
);
CREATE TABLE insurance_policies.Payments (
payment_id numeric PRIMARY KEY,
settlement_id numeric,
payment_method_code text,
date_payment_made date,
amount_payment numeric
);
CREATE TABLE gas_company.company (
company_id numeric PRIMARY KEY,
rank numeric,
company text,
headquarters text,
main_industry text,
sales_billion numeric,
profits_billion numeric,
assets_billion numeric,
market_value numeric
);
CREATE TABLE gas_company.gas_station (
station_id numeric PRIMARY KEY,
open_year numeric,
location text,
manager_name text,
vice_manager_name text,
representative_name text
);
CREATE TABLE gas_company.station_company (
station_id numeric PRIMARY KEY,
company_id numeric,
rank_of_the_year numeric
);
CREATE TABLE e_government.Addresses (
address_id numeric PRIMARY KEY,
line_1_number_building text,
town_city text,
zip_postcode text,
state_province_county text,
country text
);
CREATE TABLE e_government.Services (
service_id numeric PRIMARY KEY,
service_type_code text,
service_name text,
service_descriptio text
);
CREATE TABLE e_government.Forms (
form_id numeric PRIMARY KEY,
form_type_code text,
service_id numeric,
form_number text,
form_name text,
form_description text
);
CREATE TABLE e_government.Individuals (
individual_id numeric PRIMARY KEY,
individual_first_name text,
individual_middle_name text,
inidividual_phone text,
individual_email text,
individual_address text,
individual_last_name text
);
CREATE TABLE e_government.Organizations (
organization_id numeric PRIMARY KEY,
date_formed date,
organization_name text,
uk_vat_number text
);
CREATE TABLE e_government.Parties (
party_id numeric PRIMARY KEY,
payment_method_code text,
party_phone text,
party_email text
);
CREATE TABLE e_government.Organization_Contact_Individuals (
individual_id numeric PRIMARY KEY,
organization_id numeric,
date_contact_from date,
date_contact_to date
);
CREATE TABLE e_government.Party_Addresses (
party_id numeric PRIMARY KEY,
address_id numeric,
date_address_from date,
address_type_code text,
date_address_to date
);
CREATE TABLE e_government.Party_Forms (
party_id numeric PRIMARY KEY,
form_id numeric,
date_completion_started date,
form_status_code text,
date_fully_completed date
);
CREATE TABLE e_government.Party_Services (
booking_id numeric,
customer_id numeric,
service_id numeric,
service_datetime date,
booking_made_date date
);
CREATE TABLE school_bus.driver (
driver_id numeric PRIMARY KEY,
name text,
party text,
home_city text,
age numeric
);
CREATE TABLE school_bus.school (
school_id numeric PRIMARY KEY,
grade text,
school text,
location text,
type text
);
CREATE TABLE school_bus.school_bus (
school_id numeric PRIMARY KEY,
driver_id numeric,
years_working numeric,
if_full_time boolean
);
CREATE TABLE machine_repair.repair (
repair_id numeric PRIMARY KEY,
name text,
launch_date date,
notes text
);
CREATE TABLE machine_repair.machine (
machine_id numeric PRIMARY KEY,
making_year numeric,
class text,
team text,
machine_series text,
value_points numeric,
quality_rank numeric
);
CREATE TABLE machine_repair.technician (
technician_id numeric PRIMARY KEY,
name text,
team text,
starting_year numeric,
age numeric
);
CREATE TABLE machine_repair.repair_assignment (
technician_id numeric PRIMARY KEY,
repair_id numeric,
machine_id numeric
);
CREATE TABLE theme_gallery.artist (
artist_id numeric PRIMARY KEY,
name text,
country text,
year_join numeric,
age numeric
);
CREATE TABLE theme_gallery.exhibition (
exhibition_id numeric PRIMARY KEY,
year numeric,
theme text,
artist_id numeric,
ticket_price numeric
);
CREATE TABLE theme_gallery.exhibition_record (
exhibition_id numeric PRIMARY KEY,
date_value date,
attendance numeric
);
CREATE TABLE film_rank.film (
film_id numeric PRIMARY KEY,
title text,
studio text,
director text,
gross_in_dollar numeric
);
CREATE TABLE film_rank.market (
market_id numeric PRIMARY KEY,
country text,
number_cities numeric
);
CREATE TABLE film_rank.film_market_estimation (
estimation_id numeric PRIMARY KEY,
low_estimate numeric,
high_estimate numeric,
film_id numeric,
type text,
market_id numeric,
year numeric
);
CREATE TABLE party_people.region (
region_id numeric PRIMARY KEY,
region_name text,
date_value date,
label text,
format text,
catalogue text
);
CREATE TABLE party_people.party (
party_id numeric PRIMARY KEY,
minister text,
took_office text,
left_office text,
region_id numeric,
party_name text
);
CREATE TABLE party_people.member (
member_id numeric PRIMARY KEY,
member_name text,
party_id text,
in_office text
);
CREATE TABLE party_people.party_events (
event_id numeric PRIMARY KEY,
event_name text,
party_id numeric,
member_in_charge_id numeric
);
CREATE TABLE hospital_1.Physician (
employeeid numeric PRIMARY KEY,
name text,
position text,
ssn numeric
);
CREATE TABLE hospital_1.Department (
departmentid numeric PRIMARY KEY,
name text,
head numeric
);
CREATE TABLE hospital_1.Affiliated_With (
physician numeric PRIMARY KEY,
department numeric,
primaryaffiliation boolean
);
CREATE TABLE hospital_1.Procedures (
code numeric PRIMARY KEY,
name text,
cost numeric
);
CREATE TABLE hospital_1.Trained_In (
physician numeric PRIMARY KEY,
treatment numeric,
certificationdate date,
certificationexpires time
);
CREATE TABLE hospital_1.Patient (
ssn numeric PRIMARY KEY,
name text,
address text,
phone text,
insuranceid numeric,
pcp numeric
);
CREATE TABLE hospital_1.Nurse (
employeeid numeric PRIMARY KEY,
name text,
position text,
registered boolean,
ssn numeric
);
CREATE TABLE hospital_1.Appointment (
appointmentid numeric PRIMARY KEY,
patient numeric,
prepnurse numeric,
physician numeric,
start_time time,
end_time time,
examinationroom text
);
CREATE TABLE hospital_1.Medication (
code numeric PRIMARY KEY,
name text,
brand text,
description text
);
CREATE TABLE hospital_1.Prescribes (
physician numeric PRIMARY KEY,
patient numeric,
medication numeric,
date_value date,
appointment numeric,
dose text
);
CREATE TABLE hospital_1.Block (
blockfloor numeric PRIMARY KEY,
blockcode numeric
);
CREATE TABLE hospital_1.Room (
roomnumber numeric PRIMARY KEY,
roomtype text,
blockfloor numeric,
blockcode numeric,
unavailable boolean
);
CREATE TABLE hospital_1.On_Call (
nurse numeric PRIMARY KEY,
blockfloor numeric,
blockcode numeric,
oncallstart time,
oncallend time
);
CREATE TABLE hospital_1.Stay (
stayid numeric PRIMARY KEY,
patient numeric,
room numeric,
staystart time,
stayend time
);
CREATE TABLE hospital_1.Undergoes (
patient numeric PRIMARY KEY,
procedures numeric,
stay numeric,
dateundergoes date,
physician numeric,
assistingnurse numeric
);
CREATE TABLE customers_campaigns_ecommerce.Premises (
premise_id numeric PRIMARY KEY,
premises_type text,
premise_details text
);
CREATE TABLE customers_campaigns_ecommerce.Products (
product_id numeric PRIMARY KEY,
product_category text,
product_name text
);
CREATE TABLE customers_campaigns_ecommerce.Customers (
customer_id numeric PRIMARY KEY,
payment_method text,
customer_name text,
customer_phone text,
customer_email text,
customer_address text,
customer_login text,
customer_password text
);
CREATE TABLE customers_campaigns_ecommerce.Mailshot_Campaigns (
mailshot_id numeric PRIMARY KEY,
product_category text,
mailshot_name text,
mailshot_start_date date,
mailshot_end_date date
);
CREATE TABLE customers_campaigns_ecommerce.Customer_Addresses (
customer_id numeric,
premise_id numeric,
date_address_from date,
address_type_code text,
date_address_to date
);
CREATE TABLE customers_campaigns_ecommerce.Customer_Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
order_status_code text,
shipping_method_code text,
order_placed_datetime date,
order_delivered_datetime date,
order_shipping_charges text
);
CREATE TABLE customers_campaigns_ecommerce.Mailshot_Customers (
mailshot_id numeric,
customer_id numeric,
outcome_code text,
mailshot_customer_date date
);
CREATE TABLE customers_campaigns_ecommerce.Order_Items (
item_id numeric,
order_item_status_code text,
order_id numeric,
product_id numeric,
item_status_code text,
item_delivered_datetime date,
item_order_quantity text
);
CREATE TABLE gymnast.gymnast (
gymnast_id numeric PRIMARY KEY,
floor_exercise_points numeric,
pommel_horse_points numeric,
rings_points numeric,
vault_points numeric,
parallel_bars_points numeric,
horizontal_bar_points numeric,
total_points numeric
);
CREATE TABLE gymnast.people (
people_id numeric PRIMARY KEY,
name text,
age numeric,
height numeric,
hometown text
);
CREATE TABLE restaurants.GEOGRAPHIC (
city_name text PRIMARY KEY,
county text,
region text
);
CREATE TABLE restaurants.RESTAURANT (
id numeric PRIMARY KEY,
name text,
food_type text,
city_name text,
rating numeric
);
CREATE TABLE restaurants.LOCATION (
restaurant_id numeric PRIMARY KEY,
house_number numeric,
street_name text,
city_name text
);
CREATE TABLE mountain_photos.mountain (
id numeric PRIMARY KEY,
name text,
height numeric,
prominence numeric,
range text,
country text
);
CREATE TABLE mountain_photos.camera_lens (
id numeric PRIMARY KEY,
brand text,
name text,
focal_length_mm numeric,
max_aperture numeric
);
CREATE TABLE mountain_photos.photos (
id numeric PRIMARY KEY,
camera_lens_id numeric,
mountain_id numeric,
color text,
name text
);
CREATE TABLE battle_death.battle (
id numeric PRIMARY KEY,
name text,
date_value date,
bulgarian_commander text,
latin_commander text,
result text
);
CREATE TABLE battle_death.ship (
lost_in_battle numeric,
id numeric PRIMARY KEY,
name text,
tonnage text,
ship_type text,
location text,
disposition_of_ship text
);
CREATE TABLE battle_death.death (
caused_by_ship_id numeric,
id numeric PRIMARY KEY,
note text,
killed numeric,
injured numeric
);
CREATE TABLE cre_Doc_Control_Systems.Ref_Document_Types (
document_type_code text PRIMARY KEY,
document_type_description text
);
CREATE TABLE cre_Doc_Control_Systems.Roles (
role_code text PRIMARY KEY,
role_description text
);
CREATE TABLE cre_Doc_Control_Systems.Addresses (
address_id numeric PRIMARY KEY,
address_details text
);
CREATE TABLE cre_Doc_Control_Systems.Ref_Document_Status (
document_status_code text PRIMARY KEY,
document_status_description text
);
CREATE TABLE cre_Doc_Control_Systems.Ref_Shipping_Agents (
shipping_agent_code text PRIMARY KEY,
shipping_agent_name text,
shipping_agent_description text
);
CREATE TABLE cre_Doc_Control_Systems.Documents (
document_id numeric PRIMARY KEY,
document_status_code text,
document_type_code text,
shipping_agent_code text,
receipt_date date,
receipt_number text,
other_details text
);
CREATE TABLE cre_Doc_Control_Systems.Employees (
employee_id numeric PRIMARY KEY,
role_code text,
employee_name text,
other_details text
);
CREATE TABLE cre_Doc_Control_Systems.Document_Drafts (
document_id numeric PRIMARY KEY,
draft_number numeric,
draft_details text
);
CREATE TABLE cre_Doc_Control_Systems.Draft_Copies (
document_id numeric PRIMARY KEY,
draft_number numeric,
copy_number numeric
);
CREATE TABLE cre_Doc_Control_Systems.Circulation_History (
document_id numeric PRIMARY KEY,
draft_number numeric,
copy_number numeric,
employee_id numeric
);
CREATE TABLE cre_Doc_Control_Systems.Documents_Mailed (
document_id numeric PRIMARY KEY,
mailed_to_address_id numeric,
mailing_date date
);
CREATE TABLE tracking_share_transactions.Investors (
investor_id numeric PRIMARY KEY,
investor_details text
);
CREATE TABLE tracking_share_transactions.Lots (
lot_id numeric PRIMARY KEY,
investor_id numeric,
lot_details text
);
CREATE TABLE tracking_share_transactions.Ref_Transaction_Types (
transaction_type_code text PRIMARY KEY,
transaction_type_description text
);
CREATE TABLE tracking_share_transactions.Transactions (
transaction_id numeric PRIMARY KEY,
investor_id numeric,
transaction_type_code text,
date_of_transaction date,
amount_of_transaction numeric,
share_count text,
other_details text
);
CREATE TABLE tracking_share_transactions.Sales (
sales_transaction_id numeric PRIMARY KEY,
sales_details text
);
CREATE TABLE tracking_share_transactions.Purchases (
purchase_transaction_id numeric,
purchase_details text
);
CREATE TABLE tracking_share_transactions.Transactions_Lots (
transaction_id numeric,
lot_id numeric
);
CREATE TABLE apartment_rentals.Apartment_Buildings (
building_id numeric PRIMARY KEY,
building_short_name text,
building_full_name text,
building_description text,
building_address text,
building_manager text,
building_phone text
);
CREATE TABLE apartment_rentals.Apartments (
apt_id numeric PRIMARY KEY,
building_id numeric,
apt_type_code text,
apt_number text,
bathroom_count numeric,
bedroom_count numeric,
room_count text
);
CREATE TABLE apartment_rentals.Apartment_Facilities (
apt_id numeric PRIMARY KEY,
facility_code text
);
CREATE TABLE apartment_rentals.Guests (
guest_id numeric PRIMARY KEY,
gender_code text,
guest_first_name text,
guest_last_name text,
date_of_birth date
);
CREATE TABLE apartment_rentals.Apartment_Bookings (
apt_booking_id numeric PRIMARY KEY,
apt_id numeric,
guest_id numeric,
booking_status_code text,
booking_start_date date,
booking_end_date date
);
CREATE TABLE apartment_rentals.View_Unit_Status (
apt_id numeric,
apt_booking_id numeric,
status_date date PRIMARY KEY,
available_yn bit
);
CREATE TABLE student_transcripts_tracking.Addresses (
address_id numeric PRIMARY KEY,
line_1 text,
line_2 text,
line_3 text,
city text,
zip_postcode text,
state_province_county text,
country text,
other_address_details text
);
CREATE TABLE student_transcripts_tracking.Courses (
course_id numeric PRIMARY KEY,
course_name text,
course_description text,
other_details text
);
CREATE TABLE student_transcripts_tracking.Departments (
department_id numeric PRIMARY KEY,
department_name text,
department_description text,
other_details text
);
CREATE TABLE student_transcripts_tracking.Degree_Programs (
degree_program_id numeric PRIMARY KEY,
department_id numeric,
degree_summary_name text,
degree_summary_description text,
other_details text
);
CREATE TABLE student_transcripts_tracking.Sections (
section_id numeric PRIMARY KEY,
course_id numeric,
section_name text,
section_description text,
other_details text
);
CREATE TABLE student_transcripts_tracking.Semesters (
semester_id numeric PRIMARY KEY,
semester_name text,
semester_description text,
other_details text
);
CREATE TABLE student_transcripts_tracking.Students (
student_id numeric PRIMARY KEY,
current_address_id numeric,
permanent_address_id numeric,
first_name text,
middle_name text,
last_name text,
cell_mobile_number text,
email_address text,
ssn text,
date_first_registered date,
date_left date,
other_student_details text
);
CREATE TABLE student_transcripts_tracking.Student_Enrolment (
student_enrolment_id numeric PRIMARY KEY,
degree_program_id numeric,
semester_id numeric,
student_id numeric,
other_details text
);
CREATE TABLE student_transcripts_tracking.Student_Enrolment_Courses (
student_course_id numeric PRIMARY KEY,
course_id numeric,
student_enrolment_id numeric
);
CREATE TABLE student_transcripts_tracking.Transcripts (
transcript_id numeric PRIMARY KEY,
transcript_date date,
other_details text
);
CREATE TABLE student_transcripts_tracking.Transcript_Contents (
student_course_id numeric,
transcript_id numeric
);
CREATE TABLE cre_Docs_and_Epenses.Ref_Document_Types (
document_type_code text PRIMARY KEY,
document_type_name text,
document_type_description text
);
CREATE TABLE cre_Docs_and_Epenses.Ref_Budget_Codes (
budget_type_code text PRIMARY KEY,
budget_type_description text
);
CREATE TABLE cre_Docs_and_Epenses.Projects (
project_id numeric PRIMARY KEY,
project_details text
);
CREATE TABLE cre_Docs_and_Epenses.Documents (
document_id numeric PRIMARY KEY,
document_type_code text,
project_id numeric,
document_date date,
document_name text,
document_description text,
other_details text
);
CREATE TABLE cre_Docs_and_Epenses.Statements (
statement_id numeric PRIMARY KEY,
statement_details text
);
CREATE TABLE cre_Docs_and_Epenses.Documents_with_Expenses (
document_id numeric PRIMARY KEY,
budget_type_code text,
document_details text
);
CREATE TABLE cre_Docs_and_Epenses.Accounts (
account_id numeric PRIMARY KEY,
statement_id numeric,
account_details text
);
CREATE TABLE ship_mission.mission (
mission_id numeric PRIMARY KEY,
ship_id numeric,
code text,
launched_year numeric,
location text,
speed_knots numeric,
fate text
);
CREATE TABLE ship_mission.ship (
ship_id numeric PRIMARY KEY,
name text,
type text,
nationality text,
tonnage numeric
);
CREATE TABLE company_office.buildings (
id numeric PRIMARY KEY,
name text,
city text,
height numeric,
stories numeric,
status text
);
CREATE TABLE company_office.Companies (
id numeric PRIMARY KEY,
name text,
headquarters text,
industry text,
sales_billion numeric,
profits_billion numeric,
assets_billion numeric,
market_value_billion text
);
CREATE TABLE company_office.Office_locations (
building_id numeric PRIMARY KEY,
company_id numeric,
move_in_year numeric
);
CREATE TABLE tracking_software_problems.Problem_Category_Codes (
problem_category_code text PRIMARY KEY,
problem_category_description text
);
CREATE TABLE tracking_software_problems.Problem_Log (
problem_log_id numeric PRIMARY KEY,
assigned_to_staff_id numeric,
problem_id numeric,
problem_category_code text,
problem_status_code text,
log_entry_date date,
log_entry_description text,
log_entry_fix text,
other_log_details text
);
CREATE TABLE tracking_software_problems.Problem_Status_Codes (
problem_status_code text PRIMARY KEY,
problem_status_description text
);
CREATE TABLE tracking_software_problems.Product (
product_id numeric PRIMARY KEY,
product_name text,
product_details text
);
CREATE TABLE tracking_software_problems.Staff (
staff_id numeric PRIMARY KEY,
staff_first_name text,
staff_last_name text,
other_staff_details text
);
CREATE TABLE tracking_software_problems.Problems (
problem_id numeric PRIMARY KEY,
product_id numeric,
closure_authorised_by_staff_id numeric,
reported_by_staff_id numeric,
date_problem_reported date,
date_problem_closed date,
problem_description text,
other_problem_details text
);
CREATE TABLE products_gen_characteristics.Ref_Characteristic_Types (
characteristic_type_code text PRIMARY KEY,
characteristic_type_description text
);
CREATE TABLE products_gen_characteristics.Ref_Colors (
color_code text PRIMARY KEY,
color_description text
);
CREATE TABLE products_gen_characteristics.Ref_Product_Categories (
product_category_code text PRIMARY KEY,
product_category_description text,
unit_of_measure text
);
CREATE TABLE products_gen_characteristics.Characteristics (
characteristic_id numeric PRIMARY KEY,
characteristic_type_code text,
characteristic_data_type text,
characteristic_name text,
other_characteristic_details text
);
CREATE TABLE products_gen_characteristics.Products (
product_id numeric PRIMARY KEY,
color_code text,
product_category_code text,
product_name text,
typical_buying_price text,
typical_selling_price text,
product_description text,
other_product_details text
);
CREATE TABLE products_gen_characteristics.Product_Characteristics (
product_id numeric,
characteristic_id numeric,
product_characteristic_value text
);
CREATE TABLE coffee_shop.shop (
shop_id numeric PRIMARY KEY,
address text,
num_of_staff text,
score numeric,
open_year text
);
CREATE TABLE coffee_shop.member (
member_id numeric PRIMARY KEY,
name text,
membership_card text,
age numeric,
time_of_purchase numeric,
level_of_membership numeric,
address text
);
CREATE TABLE coffee_shop.happy_hour (
hh_id numeric PRIMARY KEY,
shop_id numeric,
month text,
num_of_shaff_in_charge numeric
);
CREATE TABLE coffee_shop.happy_hour_member (
hh_id numeric PRIMARY KEY,
member_id numeric,
total_amount numeric
);
CREATE TABLE riding_club.player (
player_id numeric PRIMARY KEY,
sponsor_name text,
player_name text,
gender text,
residence text,
occupation text,
votes numeric,
rank text
);
CREATE TABLE riding_club.club (
club_id numeric PRIMARY KEY,
club_name text,
region text,
start_year numeric
);
CREATE TABLE riding_club.coach (
coach_id numeric PRIMARY KEY,
coach_name text,
gender text,
club_id numeric,
rank numeric
);
CREATE TABLE riding_club.player_coach (
player_id numeric PRIMARY KEY,
coach_id numeric,
starting_year numeric
);
CREATE TABLE riding_club.match_result (
rank numeric PRIMARY KEY,
club_id numeric,
gold numeric,
big_silver numeric,
small_silver numeric,
bronze numeric,
points numeric
);
CREATE TABLE customers_card_transactions.Accounts (
account_id numeric PRIMARY KEY,
customer_id numeric,
account_name text,
other_account_details text
);
CREATE TABLE customers_card_transactions.Customers (
customer_id numeric PRIMARY KEY,
customer_first_name text,
customer_last_name text,
customer_address text,
customer_phone text,
customer_email text,
other_customer_details text
);
CREATE TABLE customers_card_transactions.Customers_Cards (
card_id numeric PRIMARY KEY,
customer_id numeric,
card_type_code text,
card_number text,
date_valid_from date,
date_valid_to date,
other_card_details text
);
CREATE TABLE customers_card_transactions.Financial_Transactions (
transaction_id numeric,
previous_transaction_id numeric,
account_id numeric,
card_id numeric,
transaction_type text,
transaction_date date,
transaction_amount numeric,
transaction_comment text,
other_transaction_details text
);
CREATE TABLE county_public_safety.county_public_safety (
county_id numeric PRIMARY KEY,
name text,
population numeric,
police_officers numeric,
residents_per_officer numeric,
case_burden numeric,
crime_rate numeric,
police_force text,
location text
);
CREATE TABLE county_public_safety.city (
city_id numeric PRIMARY KEY,
county_id numeric,
name text,
white numeric,
black numeric,
amerindian numeric,
asian numeric,
multiracial numeric,
hispanic numeric
);
CREATE TABLE performance_attendance.member (
member_id text PRIMARY KEY,
name text,
nationality text,
role text
);
CREATE TABLE performance_attendance.performance (
performance_id numeric PRIMARY KEY,
date_value date,
host text,
location text,
attendance numeric
);
CREATE TABLE performance_attendance.member_attendance (
member_id numeric PRIMARY KEY,
performance_id numeric,
num_of_pieces numeric
);
CREATE TABLE club_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE club_1.Club (
clubid numeric PRIMARY KEY,
clubname text,
clubdesc text,
clublocation text
);
CREATE TABLE club_1.Member_of_club (
stuid numeric,
clubid numeric,
position text
);
CREATE TABLE singer.singer (
singer_id numeric PRIMARY KEY,
name text,
birth_year numeric,
net_worth_millions numeric,
citizenship text
);
CREATE TABLE singer.song (
song_id numeric PRIMARY KEY,
title text,
singer_id numeric,
sales numeric,
highest_position numeric
);
CREATE TABLE culture_company.book_club (
book_club_id numeric PRIMARY KEY,
year numeric,
author_or_editor text,
book_title text,
publisher text,
category text,
result text
);
CREATE TABLE culture_company.movie (
movie_id numeric PRIMARY KEY,
title text,
year numeric,
director text,
budget_million numeric,
gross_worldwide numeric
);
CREATE TABLE culture_company.culture_company (
company_name text PRIMARY KEY,
type text,
incorporated_in text,
group_equity_shareholding numeric,
book_club_id text,
movie_id text
);
CREATE TABLE cre_Doc_Template_Mgt.Ref_Template_Types (
template_type_code text PRIMARY KEY,
template_type_description text
);
CREATE TABLE cre_Doc_Template_Mgt.Templates (
template_id numeric PRIMARY KEY,
version_number numeric,
template_type_code text,
date_effective_from date,
date_effective_to date,
template_details text
);
CREATE TABLE cre_Doc_Template_Mgt.Documents (
document_id numeric PRIMARY KEY,
template_id numeric,
document_name text,
document_description text,
other_details text
);
CREATE TABLE cre_Doc_Template_Mgt.Paragraphs (
paragraph_id numeric PRIMARY KEY,
document_id numeric,
paragraph_text text,
other_details text
);
CREATE TABLE musical.musical (
musical_id numeric PRIMARY KEY,
name text,
year numeric,
award text,
category text,
nominee text,
result text
);
CREATE TABLE musical.actor (
actor_id numeric PRIMARY KEY,
name text,
musical_id numeric,
character text,
duration text,
age numeric
);
CREATE TABLE world_1.city (
id numeric PRIMARY KEY,
name text,
countrycode text,
district text,
population numeric
);
CREATE TABLE world_1.sqlite_sequence (
name text,
seq text
);
CREATE TABLE world_1.country (
code text PRIMARY KEY,
name text,
continent text,
region text,
surfacearea numeric,
indepyear numeric,
population numeric,
lifeexpectancy numeric,
gnp numeric,
gnpold numeric,
localname text,
governmentform text,
headofstate text,
capital numeric,
code2 text
);
CREATE TABLE world_1.countrylanguage (
countrycode text PRIMARY KEY,
language text,
isofficial text,
percentage numeric
);
CREATE TABLE device.device (
device_id numeric PRIMARY KEY,
device text,
carrier text,
package_version text,
applications text,
software_platform text
);
CREATE TABLE device.shop (
shop_id numeric PRIMARY KEY,
shop_name text,
location text,
open_date date,
open_year numeric
);
CREATE TABLE device.stock (
shop_id numeric PRIMARY KEY,
device_id numeric,
quantity numeric
);
CREATE TABLE tracking_grants_for_research.Document_Types (
document_type_code text PRIMARY KEY,
document_description text
);
CREATE TABLE tracking_grants_for_research.Documents (
document_id numeric PRIMARY KEY,
document_type_code text,
grant_id numeric,
sent_date date,
response_received_date date,
other_details text
);
CREATE TABLE tracking_grants_for_research.Grants (
grant_id numeric PRIMARY KEY,
organisation_id numeric,
grant_amount numeric,
grant_start_date date,
grant_end_date date,
other_details text
);
CREATE TABLE tracking_grants_for_research.Organisation_Types (
organisation_type text PRIMARY KEY,
organisation_type_description text
);
CREATE TABLE tracking_grants_for_research.Organisations (
organisation_id numeric PRIMARY KEY,
organisation_type text,
organisation_details text
);
CREATE TABLE tracking_grants_for_research.Project_Outcomes (
project_id numeric,
outcome_code text,
outcome_details text
);
CREATE TABLE tracking_grants_for_research.Project_Staff (
staff_id numeric PRIMARY KEY,
project_id numeric,
role_code text,
date_from date,
date_to date,
other_details text
);
CREATE TABLE tracking_grants_for_research.Projects (
project_id numeric PRIMARY KEY,
organisation_id numeric,
project_details text
);
CREATE TABLE tracking_grants_for_research.Research_Outcomes (
outcome_code text PRIMARY KEY,
outcome_description text
);
CREATE TABLE tracking_grants_for_research.Research_Staff (
staff_id numeric PRIMARY KEY,
employer_organisation_id numeric,
staff_details text
);
CREATE TABLE tracking_grants_for_research.Staff_Roles (
role_code text PRIMARY KEY,
role_description text
);
CREATE TABLE tracking_grants_for_research.Tasks (
task_id numeric PRIMARY KEY,
project_id numeric,
task_details text,
eg_agree_objectives text
);
CREATE TABLE employee_hire_evaluation.employee (
employee_id numeric PRIMARY KEY,
name text,
age numeric,
city text
);
CREATE TABLE employee_hire_evaluation.shop (
shop_id numeric PRIMARY KEY,
name text,
location text,
district text,
number_products numeric,
manager_name text
);
CREATE TABLE employee_hire_evaluation.hiring (
shop_id numeric,
employee_id numeric PRIMARY KEY,
start_from text,
is_full_time boolean
);
CREATE TABLE employee_hire_evaluation.evaluation (
employee_id text PRIMARY KEY,
year_awarded text,
bonus numeric
);
CREATE TABLE movie_1.Movie (
mid numeric PRIMARY KEY,
title text,
year numeric,
director text
);
CREATE TABLE movie_1.Reviewer (
rid numeric PRIMARY KEY,
name text
);
CREATE TABLE movie_1.Rating (
rid numeric,
mid numeric,
stars numeric,
ratingdate date
);
CREATE TABLE network_1.Highschooler (
id numeric PRIMARY KEY,
name text,
grade numeric
);
CREATE TABLE network_1.Friend (
student_id numeric PRIMARY KEY,
friend_id numeric
);
CREATE TABLE network_1.Likes (
student_id numeric PRIMARY KEY,
liked_id numeric
);
CREATE TABLE poker_player.poker_player (
poker_player_id numeric PRIMARY KEY,
people_id numeric,
final_table_made numeric,
best_finish numeric,
money_rank numeric,
earnings numeric
);
CREATE TABLE poker_player.people (
people_id numeric PRIMARY KEY,
nationality text,
name text,
birth_date date,
height numeric
);
CREATE TABLE program_share.program (
program_id numeric PRIMARY KEY,
name text,
origin text,
launch numeric,
owner text
);
CREATE TABLE program_share.channel (
channel_id numeric PRIMARY KEY,
name text,
owner text,
share_in_percent numeric,
rating_in_percent numeric
);
CREATE TABLE program_share.broadcast (
channel_id numeric PRIMARY KEY,
program_id numeric,
time_of_day text
);
CREATE TABLE program_share.broadcast_share (
channel_id numeric PRIMARY KEY,
program_id numeric,
date_value date,
share_in_percent numeric
);
CREATE TABLE aircraft.pilot (
pilot_id numeric PRIMARY KEY,
name text,
age numeric
);
CREATE TABLE aircraft.aircraft (
aircraft_id numeric PRIMARY KEY,
aircraft text,
description text,
max_gross_weight text,
total_disk_area text,
max_disk_loading text
);
CREATE TABLE aircraft.match (
round numeric PRIMARY KEY,
location text,
country text,
date_value date,
fastest_qualifying text,
winning_pilot text,
winning_aircraft text
);
CREATE TABLE aircraft.airport (
airport_id numeric PRIMARY KEY,
airport_name text,
total_passengers numeric,
change_perc text,
international_passengers numeric,
domestic_passengers numeric,
transit_passengers numeric,
aircraft_movements numeric,
freight_metric_tonnes numeric
);
CREATE TABLE aircraft.airport_aircraft (
id numeric,
airport_id numeric PRIMARY KEY,
aircraft_id numeric
);
CREATE TABLE restaurant_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE restaurant_1.Restaurant (
resid numeric PRIMARY KEY,
resname text,
address text,
rating numeric
);
CREATE TABLE restaurant_1.Type_Of_Restaurant (
resid numeric,
restypeid numeric
);
CREATE TABLE restaurant_1.Restaurant_Type (
restypeid numeric PRIMARY KEY,
restypename text,
restypedescription text
);
CREATE TABLE restaurant_1.Visits_Restaurant (
stuid numeric,
resid numeric,
time time,
spent numeric
);
CREATE TABLE customers_and_invoices.Customers (
customer_id numeric PRIMARY KEY,
customer_first_name text,
customer_middle_initial text,
customer_last_name text,
gender text,
email_address text,
login_name text,
login_password text,
phone_number text,
town_city text,
state_county_province text,
country text
);
CREATE TABLE customers_and_invoices.Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
date_order_placed date,
order_details text
);
CREATE TABLE customers_and_invoices.Invoices (
invoice_number numeric PRIMARY KEY,
order_id numeric,
invoice_date date
);
CREATE TABLE customers_and_invoices.Accounts (
account_id numeric PRIMARY KEY,
customer_id numeric,
date_account_opened date,
account_name text,
other_account_details text
);
CREATE TABLE customers_and_invoices.Product_Categories (
production_type_code text PRIMARY KEY,
product_type_description text,
vat_rating numeric
);
CREATE TABLE customers_and_invoices.Products (
product_id numeric PRIMARY KEY,
parent_product_id numeric,
production_type_code text,
unit_price numeric,
product_name text,
product_color text,
product_size text
);
CREATE TABLE customers_and_invoices.Financial_Transactions (
transaction_id numeric,
account_id numeric,
invoice_number numeric,
transaction_type text,
transaction_date date,
transaction_amount numeric,
transaction_comment text,
other_transaction_details text
);
CREATE TABLE customers_and_invoices.Order_Items (
order_item_id numeric PRIMARY KEY,
order_id numeric,
product_id numeric,
product_quantity text,
other_order_item_details text
);
CREATE TABLE customers_and_invoices.Invoice_Line_Items (
order_item_id numeric,
invoice_number numeric,
product_id numeric,
product_title text,
product_quantity text,
product_price numeric,
derived_product_cost numeric,
derived_vat_payable numeric,
derived_total_cost numeric
);
CREATE TABLE insurance_and_eClaims.Customers (
customer_id numeric PRIMARY KEY,
customer_details text
);
CREATE TABLE insurance_and_eClaims.Staff (
staff_id numeric PRIMARY KEY,
staff_details text
);
CREATE TABLE insurance_and_eClaims.Policies (
policy_id numeric PRIMARY KEY,
customer_id numeric,
policy_type_code text,
start_date date,
end_date date
);
CREATE TABLE insurance_and_eClaims.Claim_Headers (
claim_header_id numeric PRIMARY KEY,
claim_status_code text,
claim_type_code text,
policy_id numeric,
date_of_claim date,
date_of_settlement date,
amount_claimed numeric,
amount_piad numeric
);
CREATE TABLE insurance_and_eClaims.Claims_Documents (
claim_id numeric PRIMARY KEY,
document_type_code text,
created_by_staff_id numeric,
created_date date
);
CREATE TABLE insurance_and_eClaims.Claims_Processing_Stages (
claim_stage_id numeric PRIMARY KEY,
next_claim_stage_id numeric,
claim_status_name text,
claim_status_description text
);
CREATE TABLE insurance_and_eClaims.Claims_Processing (
claim_processing_id numeric PRIMARY KEY,
claim_id numeric,
claim_outcome_code text,
claim_stage_id numeric,
staff_id numeric
);
CREATE TABLE college_1.CLASS (
class_code text PRIMARY KEY,
crs_code text,
class_section text,
class_time text,
class_room text,
prof_num numeric
);
CREATE TABLE college_1.COURSE (
crs_code text PRIMARY KEY,
dept_code text,
crs_description text,
crs_credit numeric
);
CREATE TABLE college_1.DEPARTMENT (
dept_code text PRIMARY KEY,
dept_name text,
school_code text,
emp_num numeric,
dept_address text,
dept_extension text
);
CREATE TABLE college_1.EMPLOYEE (
emp_num numeric PRIMARY KEY,
emp_lname text,
emp_fname text,
emp_initial text,
emp_jobcode text,
emp_hiredate time,
emp_dob time
);
CREATE TABLE college_1.ENROLL (
class_code text,
stu_num numeric,
enroll_grade text
);
CREATE TABLE college_1.PROFESSOR (
emp_num numeric,
dept_code text,
prof_office text,
prof_extension text,
prof_high_degree text
);
CREATE TABLE college_1.STUDENT (
stu_num numeric PRIMARY KEY,
stu_lname text,
stu_fname text,
stu_init text,
stu_dob time,
stu_hrs numeric,
stu_class text,
stu_gpa numeric,
stu_transfer numeric,
dept_code text,
stu_phone text,
prof_num numeric
);
CREATE TABLE local_govt_mdm.Customer_Master_Index (
master_customer_id numeric PRIMARY KEY,
cmi_details text
);
CREATE TABLE local_govt_mdm.CMI_Cross_References (
cmi_cross_ref_id numeric PRIMARY KEY,
master_customer_id numeric,
source_system_code text
);
CREATE TABLE local_govt_mdm.Council_Tax (
council_tax_id numeric PRIMARY KEY,
cmi_cross_ref_id numeric
);
CREATE TABLE local_govt_mdm.Business_Rates (
business_rates_id numeric PRIMARY KEY,
cmi_cross_ref_id numeric
);
CREATE TABLE local_govt_mdm.Benefits_Overpayments (
council_tax_id numeric PRIMARY KEY,
cmi_cross_ref_id numeric
);
CREATE TABLE local_govt_mdm.Parking_Fines (
council_tax_id numeric PRIMARY KEY,
cmi_cross_ref_id numeric
);
CREATE TABLE local_govt_mdm.Rent_Arrears (
council_tax_id numeric PRIMARY KEY,
cmi_cross_ref_id numeric
);
CREATE TABLE local_govt_mdm.Electoral_Register (
electoral_register_id numeric PRIMARY KEY,
cmi_cross_ref_id numeric
);
CREATE TABLE book_2.publication (
publication_id numeric PRIMARY KEY,
book_id numeric,
publisher text,
publication_date date,
price numeric
);
CREATE TABLE book_2.book (
book_id numeric PRIMARY KEY,
title text,
issues numeric,
writer text
);
CREATE TABLE hr_1.regions (
region_id numeric PRIMARY KEY,
region_name text
);
CREATE TABLE hr_1.countries (
country_id text PRIMARY KEY,
country_name text,
region_id numeric
);
CREATE TABLE hr_1.departments (
department_id numeric PRIMARY KEY,
department_name text,
manager_id numeric,
location_id numeric
);
CREATE TABLE hr_1.jobs (
job_id text PRIMARY KEY,
job_title text,
min_salary numeric,
max_salary numeric
);
CREATE TABLE hr_1.employees (
employee_id numeric PRIMARY KEY,
first_name text,
last_name text,
email text,
phone_number text,
hire_date time,
job_id text,
salary numeric,
commission_pct numeric,
manager_id numeric,
department_id numeric
);
CREATE TABLE hr_1.job_history (
employee_id numeric PRIMARY KEY,
start_date time,
end_date time,
job_id text,
department_id numeric
);
CREATE TABLE hr_1.locations (
location_id numeric PRIMARY KEY,
street_address text,
postal_code text,
city text,
state_province text,
country_id text
);
CREATE TABLE soccer_1.Player_Attributes (
id numeric PRIMARY KEY,
player_fifa_api_id numeric,
player_api_id numeric,
date_value date,
overall_rating numeric,
potential numeric,
preferred_foot text,
attacking_work_rate text,
defensive_work_rate text,
crossing numeric,
finishing numeric,
heading_accuracy numeric,
short_passing numeric,
volleys numeric,
dribbling numeric,
curve numeric,
free_kick_accuracy numeric,
long_passing numeric,
ball_control numeric,
acceleration numeric,
sprint_speed numeric,
agility numeric,
reactions numeric,
balance numeric,
shot_power numeric,
jumping numeric,
stamina numeric,
strength numeric,
long_shots numeric,
aggression numeric,
interceptions numeric,
positioning numeric,
vision numeric,
penalties numeric,
marking numeric,
standing_tackle numeric,
sliding_tackle numeric,
gk_diving numeric,
gk_handling numeric,
gk_kicking numeric,
gk_positioning numeric,
gk_reflexes numeric
);
CREATE TABLE soccer_1.sqlite_sequence (
name text,
seq text
);
CREATE TABLE soccer_1.Player (
id numeric PRIMARY KEY,
player_api_id numeric,
player_name text,
player_fifa_api_id numeric,
birthday text,
height numeric,
weight numeric
);
CREATE TABLE soccer_1.League (
id numeric PRIMARY KEY,
country_id numeric,
name text
);
CREATE TABLE soccer_1.Country (
id numeric PRIMARY KEY,
name text
);
CREATE TABLE soccer_1.Team (
id numeric PRIMARY KEY,
team_api_id numeric,
team_fifa_api_id numeric,
team_long_name text,
team_short_name text
);
CREATE TABLE soccer_1.Team_Attributes (
id numeric PRIMARY KEY,
team_fifa_api_id numeric,
team_api_id numeric,
date_value date,
buildupplayspeed numeric,
buildupplayspeedclass text,
buildupplaydribbling numeric,
buildupplaydribblingclass text,
buildupplaypassing numeric,
buildupplaypassingclass text,
buildupplaypositioningclass text,
chancecreationpassing numeric,
chancecreationpassingclass text,
chancecreationcrossing numeric,
chancecreationcrossingclass text,
chancecreationshooting numeric,
chancecreationshootingclass text,
chancecreationpositioningclass text,
defencepressure numeric,
defencepressureclass text,
defenceaggression numeric,
defenceaggressionclass text,
defenceteamwidth numeric,
defenceteamwidthclass text,
defencedefenderlineclass text
);
CREATE TABLE sakila_1.actor (
actor_id numeric PRIMARY KEY,
first_name text,
last_name text,
last_update date
);
CREATE TABLE sakila_1.address (
address_id numeric PRIMARY KEY,
address text,
address2 text,
district text,
city_id numeric,
postal_code text,
phone text,
last_update date
);
CREATE TABLE sakila_1.category (
category_id numeric PRIMARY KEY,
name text,
last_update date
);
CREATE TABLE sakila_1.city (
city_id numeric PRIMARY KEY,
city text,
country_id numeric,
last_update date
);
CREATE TABLE sakila_1.country (
country_id numeric PRIMARY KEY,
country text,
last_update date
);
CREATE TABLE sakila_1.customer (
customer_id numeric PRIMARY KEY,
store_id numeric,
first_name text,
last_name text,
email text,
address_id numeric,
active boolean,
create_date date,
last_update date
);
CREATE TABLE sakila_1.film (
film_id numeric PRIMARY KEY,
title text,
description text,
release_year time,
language_id numeric,
original_language_id numeric,
rental_duration numeric,
rental_rate numeric,
length numeric,
replacement_cost numeric,
rating text,
special_features text,
last_update date
);
CREATE TABLE sakila_1.film_actor (
actor_id numeric PRIMARY KEY,
film_id numeric,
last_update date
);
CREATE TABLE sakila_1.film_category (
film_id numeric PRIMARY KEY,
category_id numeric,
last_update date
);
CREATE TABLE sakila_1.film_text (
film_id numeric PRIMARY KEY,
title text,
description text
);
CREATE TABLE sakila_1.inventory (
inventory_id numeric PRIMARY KEY,
film_id numeric,
store_id numeric,
last_update date
);
CREATE TABLE sakila_1.language (
language_id numeric PRIMARY KEY,
name text,
last_update date
);
CREATE TABLE sakila_1.payment (
payment_id numeric PRIMARY KEY,
customer_id numeric,
staff_id numeric,
rental_id numeric,
amount numeric,
payment_date date,
last_update date
);
CREATE TABLE sakila_1.rental (
rental_id numeric PRIMARY KEY,
rental_date date,
inventory_id numeric,
customer_id numeric,
return_date date,
staff_id numeric,
last_update date
);
CREATE TABLE sakila_1.staff (
staff_id numeric PRIMARY KEY,
first_name text,
last_name text,
address_id numeric,
picture bytea,
email text,
store_id numeric,
active boolean,
username text,
password text,
last_update date
);
CREATE TABLE sakila_1.store (
store_id numeric PRIMARY KEY,
manager_staff_id numeric,
address_id numeric,
last_update date
);
CREATE TABLE real_estate_properties.Ref_Feature_Types (
feature_type_code text PRIMARY KEY,
feature_type_name text
);
CREATE TABLE real_estate_properties.Ref_Property_Types (
property_type_code text PRIMARY KEY,
property_type_description text
);
CREATE TABLE real_estate_properties.Other_Available_Features (
feature_id numeric PRIMARY KEY,
feature_type_code text,
feature_name text,
feature_description text
);
CREATE TABLE real_estate_properties.Properties (
property_id numeric PRIMARY KEY,
property_type_code text,
date_on_market date,
date_sold date,
property_name text,
property_address text,
room_count numeric,
vendor_requested_price numeric,
buyer_offered_price numeric,
agreed_selling_price numeric,
apt_feature_1 text,
apt_feature_2 text,
apt_feature_3 text,
fld_feature_1 text,
fld_feature_2 text,
fld_feature_3 text,
hse_feature_1 text,
hse_feature_2 text,
hse_feature_3 text,
oth_feature_1 text,
oth_feature_2 text,
oth_feature_3 text,
shp_feature_1 text,
shp_feature_2 text,
shp_feature_3 text,
other_property_details text
);
CREATE TABLE real_estate_properties.Other_Property_Features (
property_id numeric,
feature_id numeric,
property_feature_description text
);
CREATE TABLE college_3.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE college_3.Faculty (
facid numeric PRIMARY KEY,
lname text,
fname text,
rank text,
sex text,
phone numeric,
room text,
building text
);
CREATE TABLE college_3.Department (
dno numeric PRIMARY KEY,
division text,
dname text,
room text,
building text,
dphone numeric
);
CREATE TABLE college_3.Member_of (
facid numeric,
dno numeric,
appt_type text
);
CREATE TABLE college_3.Course (
cid text PRIMARY KEY,
cname text,
credits numeric,
instructor numeric,
days text,
hours text,
dno numeric
);
CREATE TABLE college_3.Minor_in (
stuid numeric,
dno numeric
);
CREATE TABLE college_3.Enrolled_in (
stuid numeric,
cid text,
grade text
);
CREATE TABLE college_3.Gradeconversion (
lettergrade text PRIMARY KEY,
gradepoint numeric
);
CREATE TABLE course_teach.course (
course_id numeric PRIMARY KEY,
staring_date date,
course text
);
CREATE TABLE course_teach.teacher (
teacher_id numeric PRIMARY KEY,
name text,
age text,
hometown text
);
CREATE TABLE course_teach.course_arrange (
course_id numeric PRIMARY KEY,
teacher_id numeric,
grade numeric
);
CREATE TABLE roller_coaster.roller_coaster (
roller_coaster_id numeric PRIMARY KEY,
name text,
park text,
country_id numeric,
length numeric,
height numeric,
speed text,
opened text,
status text
);
CREATE TABLE roller_coaster.country (
country_id numeric PRIMARY KEY,
name text,
population numeric,
area numeric,
languages text
);
CREATE TABLE customer_deliveries.Products (
product_id numeric PRIMARY KEY,
product_name text,
product_price numeric,
product_description text
);
CREATE TABLE customer_deliveries.Addresses (
address_id numeric PRIMARY KEY,
address_details text,
city text,
zip_postcode text,
state_province_county text,
country text
);
CREATE TABLE customer_deliveries.Customers (
customer_id numeric PRIMARY KEY,
payment_method text,
customer_name text,
customer_phone text,
customer_email text,
date_became_customer date
);
CREATE TABLE customer_deliveries.Regular_Orders (
regular_order_id numeric PRIMARY KEY,
distributer_id numeric
);
CREATE TABLE customer_deliveries.Regular_Order_Products (
regular_order_id numeric,
product_id numeric
);
CREATE TABLE customer_deliveries.Actual_Orders (
actual_order_id numeric PRIMARY KEY,
order_status_code text,
regular_order_id numeric,
actual_order_date date
);
CREATE TABLE customer_deliveries.Actual_Order_Products (
actual_order_id numeric,
product_id numeric
);
CREATE TABLE customer_deliveries.Customer_Addresses (
customer_id numeric,
address_id numeric,
date_from date,
address_type text,
date_to date
);
CREATE TABLE customer_deliveries.Delivery_Routes (
route_id numeric PRIMARY KEY,
route_name text,
other_route_details text
);
CREATE TABLE customer_deliveries.Delivery_Route_Locations (
location_code text PRIMARY KEY,
route_id numeric,
location_address_id numeric,
location_name text
);
CREATE TABLE customer_deliveries.Trucks (
truck_id numeric PRIMARY KEY,
truck_licence_number text,
truck_details text
);
CREATE TABLE customer_deliveries.Employees (
employee_id numeric PRIMARY KEY,
employee_address_id numeric,
employee_name text,
employee_phone text
);
CREATE TABLE customer_deliveries.Order_Deliveries (
location_code text,
actual_order_id numeric,
delivery_status_code text,
driver_employee_id numeric,
truck_id numeric,
delivery_date date
);
CREATE TABLE game_injury.stadium (
id numeric PRIMARY KEY,
name text,
home_games numeric,
average_attendance numeric,
total_attendance numeric,
capacity_percentage numeric
);
CREATE TABLE game_injury.game (
stadium_id numeric,
id numeric PRIMARY KEY,
season numeric,
date_value date,
home_team text,
away_team text,
score text,
competition text
);
CREATE TABLE game_injury.injury_accident (
game_id numeric,
id numeric PRIMARY KEY,
player text,
injury text,
number_of_matches text,
source text
);
CREATE TABLE school_finance.School (
school_id text PRIMARY KEY,
school_name text,
location text,
mascot text,
enrollment numeric,
ihsaa_class text,
ihsaa_football_class text,
county text
);
CREATE TABLE school_finance.budget (
school_id numeric PRIMARY KEY,
year numeric,
budgeted numeric,
total_budget_percent_budgeted numeric,
invested numeric,
total_budget_percent_invested numeric,
budget_invested_percent text
);
CREATE TABLE school_finance.endowment (
endowment_id numeric PRIMARY KEY,
school_id numeric,
donator_name text,
amount numeric
);
CREATE TABLE scholar.venue (
venueid numeric PRIMARY KEY,
venuename text
);
CREATE TABLE scholar.author (
authorid numeric PRIMARY KEY,
authorname text
);
CREATE TABLE scholar.dataset (
datasetid numeric PRIMARY KEY,
datasetname text
);
CREATE TABLE scholar.journal (
journalid numeric PRIMARY KEY,
journalname text
);
CREATE TABLE scholar.keyphrase (
keyphraseid numeric PRIMARY KEY,
keyphrasename text
);
CREATE TABLE scholar.paper (
paperid numeric PRIMARY KEY,
title text,
venueid numeric,
year numeric,
numciting numeric,
numcitedby numeric,
journalid numeric
);
CREATE TABLE scholar.cite (
citingpaperid numeric PRIMARY KEY,
citedpaperid numeric
);
CREATE TABLE scholar.paperDataset (
paperid numeric,
datasetid numeric PRIMARY KEY
);
CREATE TABLE scholar.paperKeyphrase (
paperid numeric,
keyphraseid numeric PRIMARY KEY
);
CREATE TABLE scholar.writes (
paperid numeric PRIMARY KEY,
authorid numeric
);
CREATE TABLE voter_1.AREA_CODE_STATE (
area_code numeric PRIMARY KEY,
state text
);
CREATE TABLE voter_1.CONTESTANTS (
contestant_number numeric PRIMARY KEY,
contestant_name text
);
CREATE TABLE voter_1.VOTES (
vote_id numeric PRIMARY KEY,
phone_number numeric,
state text,
contestant_number numeric,
created time
);
CREATE TABLE match_season.country (
country_id numeric PRIMARY KEY,
country_name text,
capital text,
official_native_language text
);
CREATE TABLE match_season.team (
team_id numeric PRIMARY KEY,
name text
);
CREATE TABLE match_season.match_season (
season numeric PRIMARY KEY,
player text,
position text,
country numeric,
team numeric,
draft_pick_number numeric,
draft_class text,
college text
);
CREATE TABLE match_season.player (
player_id numeric PRIMARY KEY,
player text,
years_played text,
total_wl text,
singles_wl text,
doubles_wl text,
team numeric
);
CREATE TABLE small_bank_1.ACCOUNTS (
custid numeric PRIMARY KEY,
name text
);
CREATE TABLE small_bank_1.SAVINGS (
custid numeric PRIMARY KEY,
balance numeric
);
CREATE TABLE small_bank_1.CHECKING (
custid numeric PRIMARY KEY,
balance numeric
);
CREATE TABLE wta_1.players (
player_id numeric PRIMARY KEY,
first_name text,
last_name text,
hand text,
birth_date date,
country_code text
);
CREATE TABLE wta_1.matches (
best_of numeric,
draw_size numeric,
loser_age numeric,
loser_entry text,
loser_hand text,
loser_ht numeric,
loser_id numeric,
loser_ioc text,
loser_name text,
loser_rank numeric,
loser_rank_points numeric,
loser_seed numeric,
match_num numeric,
minutes numeric,
round text,
score text,
surface text,
tourney_date date,
tourney_id text,
tourney_level text,
tourney_name text,
winner_age numeric,
winner_entry text,
winner_hand text,
winner_ht numeric,
winner_id numeric,
winner_ioc text,
winner_name text,
winner_rank numeric,
winner_rank_points numeric,
winner_seed numeric,
year numeric
);
CREATE TABLE wta_1.rankings (
ranking_date date,
ranking numeric,
player_id numeric,
ranking_points numeric,
tours numeric
);
CREATE TABLE yelp.business (
bid numeric PRIMARY KEY,
business_id text,
name text,
full_address text,
city text,
latitude text,
longitude text,
review_count numeric,
is_open numeric,
rating numeric,
state text
);
CREATE TABLE yelp.category (
id numeric PRIMARY KEY,
business_id text,
category_name text
);
CREATE TABLE yelp.user (
uid numeric PRIMARY KEY,
user_id text,
name text
);
CREATE TABLE yelp.checkin (
cid numeric PRIMARY KEY,
business_id text,
count numeric,
day text
);
CREATE TABLE yelp.neighbourhood (
id numeric PRIMARY KEY,
business_id text,
neighbourhood_name text
);
CREATE TABLE yelp.review (
rid numeric PRIMARY KEY,
business_id text,
user_id text,
rating numeric,
text text,
year numeric,
month text
);
CREATE TABLE yelp.tip (
tip_id numeric PRIMARY KEY,
business_id text,
text text,
user_id text,
likes numeric,
year numeric,
month text
);
CREATE TABLE student_1.list (
lastname text PRIMARY KEY,
firstname text,
grade numeric,
classroom numeric
);
CREATE TABLE student_1.teachers (
lastname text PRIMARY KEY,
firstname text,
classroom numeric
);
CREATE TABLE manufacturer.manufacturer (
manufacturer_id numeric PRIMARY KEY,
open_year numeric,
name text,
num_of_factories numeric,
num_of_shops numeric
);
CREATE TABLE manufacturer.furniture (
furniture_id numeric PRIMARY KEY,
name text,
num_of_component numeric,
market_rate numeric
);
CREATE TABLE manufacturer.furniture_manufacte (
manufacturer_id numeric PRIMARY KEY,
furniture_id numeric,
price_in_dollar numeric
);
CREATE TABLE store_1.artists (
id numeric PRIMARY KEY,
name text
);
CREATE TABLE store_1.sqlite_sequence (
name text,
seq text
);
CREATE TABLE store_1.albums (
id numeric PRIMARY KEY,
title text,
artist_id numeric
);
CREATE TABLE store_1.employees (
id numeric PRIMARY KEY,
last_name text,
first_name text,
title text,
reports_to numeric,
birth_date date,
hire_date date,
address text,
city text,
state text,
country text,
postal_code text,
phone text,
fax text,
email text
);
CREATE TABLE store_1.customers (
id numeric PRIMARY KEY,
first_name text,
last_name text,
company text,
address text,
city text,
state text,
country text,
postal_code text,
phone text,
fax text,
email text,
support_rep_id numeric
);
CREATE TABLE store_1.genres (
id numeric PRIMARY KEY,
name text
);
CREATE TABLE store_1.invoices (
id numeric PRIMARY KEY,
customer_id numeric,
invoice_date date,
billing_address text,
billing_city text,
billing_state text,
billing_country text,
billing_postal_code text,
total numeric
);
CREATE TABLE store_1.media_types (
id numeric PRIMARY KEY,
name text
);
CREATE TABLE store_1.tracks (
id numeric PRIMARY KEY,
name text,
album_id numeric,
media_type_id numeric,
genre_id numeric,
composer text,
milliseconds numeric,
bytes numeric,
unit_price numeric
);
CREATE TABLE store_1.invoice_lines (
id numeric PRIMARY KEY,
invoice_id numeric,
track_id numeric,
unit_price numeric,
quantity numeric
);
CREATE TABLE store_1.playlists (
id numeric PRIMARY KEY,
name text
);
CREATE TABLE store_1.playlist_tracks (
playlist_id numeric PRIMARY KEY,
track_id numeric
);
CREATE TABLE train_station.station (
station_id numeric PRIMARY KEY,
name text,
annual_entry_exit numeric,
annual_interchanges numeric,
total_passengers numeric,
location text,
main_services text,
number_of_platforms numeric
);
CREATE TABLE train_station.train (
train_id numeric PRIMARY KEY,
name text,
time text,
service text
);
CREATE TABLE train_station.train_station (
train_id numeric PRIMARY KEY,
station_id numeric
);
CREATE TABLE document_management.Roles (
role_code text PRIMARY KEY,
role_description text
);
CREATE TABLE document_management.Users (
user_id numeric PRIMARY KEY,
role_code text,
user_name text,
user_login text,
password text
);
CREATE TABLE document_management.Document_Structures (
document_structure_code text PRIMARY KEY,
parent_document_structure_code text,
document_structure_description text
);
CREATE TABLE document_management.Functional_Areas (
functional_area_code text PRIMARY KEY,
parent_functional_area_code text,
functional_area_description text
);
CREATE TABLE document_management.Images (
image_id numeric PRIMARY KEY,
image_alt_text text,
image_name text,
image_url text
);
CREATE TABLE document_management.Documents (
document_code text PRIMARY KEY,
document_structure_code text,
document_type_code text,
access_count numeric,
document_name text
);
CREATE TABLE document_management.Document_Functional_Areas (
document_code text,
functional_area_code text
);
CREATE TABLE document_management.Document_Sections (
section_id numeric PRIMARY KEY,
document_code text,
section_sequence numeric,
section_code text,
section_title text
);
CREATE TABLE document_management.Document_Sections_Images (
section_id numeric PRIMARY KEY,
image_id numeric
);
CREATE TABLE formula_1.circuits (
circuitid numeric PRIMARY KEY,
circuitref text,
name text,
location text,
country text,
lat numeric,
lng numeric,
alt numeric,
url text
);
CREATE TABLE formula_1.races (
raceid numeric PRIMARY KEY,
year numeric,
round numeric,
circuitid numeric,
name text,
date_value date,
time text,
url text
);
CREATE TABLE formula_1.drivers (
driverid numeric PRIMARY KEY,
driverref text,
number numeric,
code text,
forename text,
surname text,
dob text,
nationality text,
url text
);
CREATE TABLE formula_1.status (
statusid numeric PRIMARY KEY,
status text
);
CREATE TABLE formula_1.seasons (
year numeric PRIMARY KEY,
url text
);
CREATE TABLE formula_1.constructors (
constructorid numeric PRIMARY KEY,
constructorref text,
name text,
nationality text,
url text
);
CREATE TABLE formula_1.constructorStandings (
constructorstandingsid numeric PRIMARY KEY,
raceid numeric,
constructorid numeric,
points numeric,
position numeric,
positiontext text,
wins numeric
);
CREATE TABLE formula_1.results (
resultid numeric PRIMARY KEY,
raceid numeric,
driverid numeric,
constructorid numeric,
number numeric,
grid numeric,
position numeric,
positiontext text,
positionorder numeric,
points numeric,
laps numeric,
time text,
milliseconds numeric,
fastestlap numeric,
rank numeric,
fastestlaptime text,
fastestlapspeed text,
statusid numeric
);
CREATE TABLE formula_1.driverStandings (
driverstandingsid numeric PRIMARY KEY,
raceid numeric,
driverid numeric,
points numeric,
position numeric,
positiontext text,
wins numeric
);
CREATE TABLE formula_1.constructorResults (
constructorresultsid numeric PRIMARY KEY,
raceid numeric,
constructorid numeric,
points numeric,
status numeric
);
CREATE TABLE formula_1.qualifying (
qualifyid numeric PRIMARY KEY,
raceid numeric,
driverid numeric,
constructorid numeric,
number numeric,
position numeric,
q1 text,
q2 text,
q3 text
);
CREATE TABLE formula_1.pitStops (
raceid numeric PRIMARY KEY,
driverid numeric,
stop numeric,
lap numeric,
time text,
duration text,
milliseconds numeric
);
CREATE TABLE formula_1.lapTimes (
raceid numeric PRIMARY KEY,
driverid numeric,
lap numeric,
position numeric,
time text,
milliseconds numeric
);
CREATE TABLE game_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE game_1.Video_Games (
gameid numeric PRIMARY KEY,
gname text,
gtype text
);
CREATE TABLE game_1.Plays_Games (
stuid numeric,
gameid numeric,
hours_played numeric
);
CREATE TABLE game_1.SportsInfo (
stuid numeric,
sportname text,
hoursperweek numeric,
gamesplayed numeric,
onscholarship text
);
CREATE TABLE loan_1.bank (
branch_id numeric PRIMARY KEY,
bname text,
no_of_customers numeric,
city text,
state text
);
CREATE TABLE loan_1.customer (
cust_id text PRIMARY KEY,
cust_name text,
acc_type text,
acc_bal numeric,
no_of_loans numeric,
credit_score numeric,
branch_id numeric,
state text
);
CREATE TABLE loan_1.loan (
loan_id text PRIMARY KEY,
loan_type text,
cust_id text,
branch_id text,
amount numeric
);
CREATE TABLE bike_1.station (
id numeric PRIMARY KEY,
name text,
lat numeric,
long numeric,
dock_count numeric,
city text,
installation_date date
);
CREATE TABLE bike_1.status (
station_id numeric,
bikes_available numeric,
docks_available numeric,
time text
);
CREATE TABLE bike_1.trip (
id numeric PRIMARY KEY,
duration numeric,
start_date date,
start_station_name text,
start_station_id numeric,
end_date date,
end_station_name text,
end_station_id numeric,
bike_id numeric,
subscription_type text,
zip_code numeric
);
CREATE TABLE bike_1.weather (
date_value date,
max_temperature_f numeric,
mean_temperature_f numeric,
min_temperature_f numeric,
max_dew_point_f numeric,
mean_dew_point_f numeric,
min_dew_point_f numeric,
max_humidity numeric,
mean_humidity numeric,
min_humidity numeric,
max_sea_level_pressure_inches numeric,
mean_sea_level_pressure_inches numeric,
min_sea_level_pressure_inches numeric,
max_visibility_miles numeric,
mean_visibility_miles numeric,
min_visibility_miles numeric,
max_wind_speed_mph numeric,
mean_wind_speed_mph numeric,
max_gust_speed_mph numeric,
precipitation_inches numeric,
cloud_cover numeric,
events text,
wind_dir_degrees numeric,
zip_code numeric
);
CREATE TABLE entrepreneur.entrepreneur (
entrepreneur_id numeric PRIMARY KEY,
people_id numeric,
company text,
money_requested numeric,
investor text
);
CREATE TABLE entrepreneur.people (
people_id numeric PRIMARY KEY,
name text,
height numeric,
weight numeric,
date_of_birth date
);
CREATE TABLE orchestra.conductor (
conductor_id numeric PRIMARY KEY,
name text,
age numeric,
nationality text,
year_of_work numeric
);
CREATE TABLE orchestra.orchestra (
orchestra_id numeric PRIMARY KEY,
orchestra text,
conductor_id numeric,
record_company text,
year_of_founded numeric,
major_record_format text
);
CREATE TABLE orchestra.performance (
performance_id numeric PRIMARY KEY,
orchestra_id numeric,
type text,
date_value date,
official_ratings_mil numeric,
weekly_rank text,
share text
);
CREATE TABLE orchestra.show (
show_id numeric,
performance_id numeric,
if_first_show boolean,
result text,
attendance numeric
);
CREATE TABLE cre_Drama_Workshop_Groups.Ref_Payment_Methods (
payment_method_code text PRIMARY KEY,
payment_method_description text
);
CREATE TABLE cre_Drama_Workshop_Groups.Ref_Service_Types (
service_type_code text PRIMARY KEY,
parent_service_type_code text,
service_type_description text
);
CREATE TABLE cre_Drama_Workshop_Groups.Addresses (
address_id text PRIMARY KEY,
line_1 text,
line_2 text,
city_town text,
state_county text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Products (
product_id text PRIMARY KEY,
product_name text,
product_price numeric,
product_description text,
other_product_service_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Marketing_Regions (
marketing_region_code text PRIMARY KEY,
marketing_region_name text,
marketing_region_descriptrion text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Clients (
client_id numeric PRIMARY KEY,
address_id numeric,
customer_email_address text,
customer_name text,
customer_phone text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Drama_Workshop_Groups (
workshop_group_id numeric PRIMARY KEY,
address_id numeric,
currency_code text,
marketing_region_code text,
store_name text,
store_phone text,
store_email_address text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Performers (
performer_id numeric PRIMARY KEY,
address_id numeric,
customer_name text,
customer_phone text,
customer_email_address text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Customers (
customer_id text PRIMARY KEY,
address_id numeric,
customer_name text,
customer_phone text,
customer_email_address text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Stores (
store_id text PRIMARY KEY,
address_id numeric,
marketing_region_code text,
store_name text,
store_phone text,
store_email_address text,
other_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Bookings (
booking_id numeric PRIMARY KEY,
customer_id numeric,
workshop_group_id text,
status_code text,
store_id numeric,
order_date date,
planned_delivery_date date,
actual_delivery_date date,
other_order_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Performers_in_Bookings (
order_id numeric PRIMARY KEY,
performer_id numeric
);
CREATE TABLE cre_Drama_Workshop_Groups.Customer_Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
store_id numeric,
order_date date,
planned_delivery_date date,
actual_delivery_date date,
other_order_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Order_Items (
order_item_id numeric PRIMARY KEY,
order_id numeric,
product_id numeric,
order_quantity text,
other_item_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Invoices (
invoice_id numeric PRIMARY KEY,
order_id numeric,
payment_method_code text,
product_id numeric,
order_quantity text,
other_item_details text,
order_item_id numeric
);
CREATE TABLE cre_Drama_Workshop_Groups.Services (
service_id numeric PRIMARY KEY,
service_type_code text,
workshop_group_id numeric,
product_description text,
product_name text,
product_price numeric,
other_product_service_details text
);
CREATE TABLE cre_Drama_Workshop_Groups.Bookings_Services (
order_id numeric PRIMARY KEY,
product_id numeric
);
CREATE TABLE cre_Drama_Workshop_Groups.Invoice_Items (
invoice_item_id numeric PRIMARY KEY,
invoice_id numeric,
order_id numeric,
order_item_id numeric,
product_id numeric,
order_quantity numeric,
other_item_details text
);
CREATE TABLE car_1.continents (
contid numeric PRIMARY KEY,
continent text
);
CREATE TABLE car_1.countries (
countryid numeric PRIMARY KEY,
countryname text,
continent numeric
);
CREATE TABLE car_1.car_makers (
id numeric PRIMARY KEY,
maker text,
fullname text,
country text
);
CREATE TABLE car_1.model_list (
modelid numeric PRIMARY KEY,
maker numeric,
model text
);
CREATE TABLE car_1.car_names (
makeid numeric PRIMARY KEY,
model text,
make text
);
CREATE TABLE car_1.cars_data (
id numeric PRIMARY KEY,
mpg text,
cylinders numeric,
edispl numeric,
horsepower text,
weight numeric,
accelerate numeric,
year numeric
);
CREATE TABLE geo.state (
state_name text PRIMARY KEY,
population numeric,
area numeric,
country_name text,
capital text,
density numeric
);
CREATE TABLE geo.city (
city_name text PRIMARY KEY,
population numeric,
country_name text,
state_name text
);
CREATE TABLE geo.border_info (
state_name text,
border text PRIMARY KEY
);
CREATE TABLE geo.highlow (
state_name text PRIMARY KEY,
highest_elevation text,
lowest_point text,
highest_point text,
lowest_elevation text
);
CREATE TABLE geo.lake (
lake_name text,
area numeric,
country_name text,
state_name text
);
CREATE TABLE geo.mountain (
mountain_name text PRIMARY KEY,
mountain_altitude numeric,
country_name text,
state_name text
);
CREATE TABLE geo.river (
river_name text PRIMARY KEY,
length numeric,
country_name text,
traverse text
);
CREATE TABLE behavior_monitoring.Ref_Address_Types (
address_type_code text PRIMARY KEY,
address_type_description text
);
CREATE TABLE behavior_monitoring.Ref_Detention_Type (
detention_type_code text PRIMARY KEY,
detention_type_description text
);
CREATE TABLE behavior_monitoring.Ref_Incident_Type (
incident_type_code text PRIMARY KEY,
incident_type_description text
);
CREATE TABLE behavior_monitoring.Addresses (
address_id numeric PRIMARY KEY,
line_1 text,
line_2 text,
line_3 text,
city text,
zip_postcode text,
state_province_county text,
country text,
other_address_details text
);
CREATE TABLE behavior_monitoring.Students (
student_id numeric PRIMARY KEY,
address_id numeric,
first_name text,
middle_name text,
last_name text,
cell_mobile_number text,
email_address text,
date_first_rental date,
date_left_university date,
other_student_details text
);
CREATE TABLE behavior_monitoring.Teachers (
teacher_id numeric PRIMARY KEY,
address_id numeric,
first_name text,
middle_name text,
last_name text,
gender text,
cell_mobile_number text,
email_address text,
other_details text
);
CREATE TABLE behavior_monitoring.Assessment_Notes (
notes_id numeric,
student_id numeric,
teacher_id numeric,
date_of_notes date,
text_of_notes text,
other_details text
);
CREATE TABLE behavior_monitoring.Behavior_Incident (
incident_id numeric PRIMARY KEY,
incident_type_code text,
student_id numeric,
date_incident_start date,
date_incident_end date,
incident_summary text,
recommendations text,
other_details text
);
CREATE TABLE behavior_monitoring.Detention (
detention_id numeric PRIMARY KEY,
detention_type_code text,
teacher_id numeric,
datetime_detention_start date,
datetime_detention_end date,
detention_summary text,
other_details text
);
CREATE TABLE behavior_monitoring.Student_Addresses (
student_id numeric,
address_id numeric,
date_address_from date,
date_address_to date,
monthly_rental numeric,
other_details text
);
CREATE TABLE behavior_monitoring.Students_in_Detention (
student_id numeric,
detention_id numeric,
incident_id numeric
);
CREATE TABLE cre_Doc_Tracking_DB.Ref_Document_Types (
document_type_code text PRIMARY KEY,
document_type_name text,
document_type_description text
);
CREATE TABLE cre_Doc_Tracking_DB.Ref_Calendar (
calendar_date date PRIMARY KEY,
day_number numeric
);
CREATE TABLE cre_Doc_Tracking_DB.Ref_Locations (
location_code text PRIMARY KEY,
location_name text,
location_description text
);
CREATE TABLE cre_Doc_Tracking_DB.Roles (
role_code text PRIMARY KEY,
role_name text,
role_description text
);
CREATE TABLE cre_Doc_Tracking_DB.All_Documents (
document_id numeric PRIMARY KEY,
date_stored date,
document_type_code text,
document_name text,
document_description text,
other_details text
);
CREATE TABLE cre_Doc_Tracking_DB.Employees (
employee_id numeric PRIMARY KEY,
role_code text,
employee_name text,
gender_mfu text,
date_of_birth date,
other_details text
);
CREATE TABLE cre_Doc_Tracking_DB.Document_Locations (
document_id numeric PRIMARY KEY,
location_code text,
date_in_location_from date,
date_in_locaton_to date
);
CREATE TABLE cre_Doc_Tracking_DB.Documents_to_be_Destroyed (
document_id numeric PRIMARY KEY,
destruction_authorised_by_employee_id numeric,
destroyed_by_employee_id numeric,
planned_destruction_date date,
actual_destruction_date date,
other_details text
);
CREATE TABLE university_basketball.basketball_match (
team_id numeric PRIMARY KEY,
school_id numeric,
team_name text,
acc_regular_season text,
acc_percent text,
acc_home text,
acc_road text,
all_games text,
all_games_percent numeric,
all_home text,
all_road text,
all_neutral text
);
CREATE TABLE university_basketball.university (
school_id numeric PRIMARY KEY,
school text,
location text,
founded numeric,
affiliation text,
enrollment numeric,
nickname text,
primary_conference text
);
CREATE TABLE soccer_2.College (
cname text PRIMARY KEY,
state text,
enr numeric
);
CREATE TABLE soccer_2.Player (
pid numeric PRIMARY KEY,
pname text,
ycard text,
hs numeric
);
CREATE TABLE soccer_2.Tryout (
pid numeric PRIMARY KEY,
cname text,
ppos text,
decision text
);
CREATE TABLE activity_1.Activity (
actid numeric PRIMARY KEY,
activity_name text
);
CREATE TABLE activity_1.Participates_in (
stuid numeric,
actid numeric
);
CREATE TABLE activity_1.Faculty_Participates_in (
facid numeric,
actid numeric
);
CREATE TABLE activity_1.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE activity_1.Faculty (
facid numeric PRIMARY KEY,
lname text,
fname text,
rank text,
sex text,
phone numeric,
room text,
building text
);
CREATE TABLE cre_Theme_park.Ref_Hotel_Star_Ratings (
star_rating_code text PRIMARY KEY,
star_rating_description text
);
CREATE TABLE cre_Theme_park.Locations (
location_id numeric PRIMARY KEY,
location_name text,
address text,
other_details text
);
CREATE TABLE cre_Theme_park.Ref_Attraction_Types (
attraction_type_code text PRIMARY KEY,
attraction_type_description text
);
CREATE TABLE cre_Theme_park.Visitors (
tourist_id numeric PRIMARY KEY,
tourist_details text
);
CREATE TABLE cre_Theme_park.Features (
feature_id numeric PRIMARY KEY,
feature_details text
);
CREATE TABLE cre_Theme_park.Hotels (
hotel_id numeric PRIMARY KEY,
star_rating_code text,
pets_allowed_yn text,
price_range numeric,
other_hotel_details text
);
CREATE TABLE cre_Theme_park.Tourist_Attractions (
tourist_attraction_id numeric PRIMARY KEY,
attraction_type_code text,
location_id numeric,
how_to_get_there text,
name text,
description text,
opening_hours text,
other_details text
);
CREATE TABLE cre_Theme_park.Street_Markets (
market_id numeric PRIMARY KEY,
market_details text
);
CREATE TABLE cre_Theme_park.Shops (
shop_id numeric PRIMARY KEY,
shop_details text
);
CREATE TABLE cre_Theme_park.Museums (
museum_id numeric PRIMARY KEY,
museum_details text
);
CREATE TABLE cre_Theme_park.Royal_Family (
royal_family_id numeric PRIMARY KEY,
royal_family_details text
);
CREATE TABLE cre_Theme_park.Theme_Parks (
theme_park_id numeric PRIMARY KEY,
theme_park_details text
);
CREATE TABLE cre_Theme_park.Visits (
visit_id numeric PRIMARY KEY,
tourist_attraction_id numeric,
tourist_id numeric,
visit_date date,
visit_details text
);
CREATE TABLE cre_Theme_park.Photos (
photo_id numeric PRIMARY KEY,
tourist_attraction_id numeric,
name text,
description text,
filename text,
other_details text
);
CREATE TABLE cre_Theme_park.Staff (
staff_id numeric PRIMARY KEY,
tourist_attraction_id numeric,
name text,
other_details text
);
CREATE TABLE cre_Theme_park.Tourist_Attraction_Features (
tourist_attraction_id numeric PRIMARY KEY,
feature_id numeric
);
CREATE TABLE twitter_1.follows (
f1 numeric PRIMARY KEY,
f2 numeric
);
CREATE TABLE twitter_1.tweets (
id numeric PRIMARY KEY,
uid numeric,
text text,
createdate date
);
CREATE TABLE twitter_1.user_profiles (
uid numeric PRIMARY KEY,
name text,
email text,
partitionid numeric,
followers numeric
);
CREATE TABLE election_representative.election (
election_id numeric PRIMARY KEY,
representative_id numeric,
date_value date,
votes numeric,
vote_percent numeric,
seats numeric,
place numeric
);
CREATE TABLE election_representative.representative (
representative_id numeric PRIMARY KEY,
name text,
state text,
party text,
lifespan text
);
CREATE TABLE voter_2.Student (
stuid numeric PRIMARY KEY,
lname text,
fname text,
age numeric,
sex text,
major numeric,
advisor numeric,
city_code text
);
CREATE TABLE voter_2.Voting_record (
stuid numeric,
registration_date date,
election_cycle text,
president_vote numeric,
vice_president_vote numeric,
secretary_vote numeric,
treasurer_vote numeric,
class_president_vote numeric,
class_senator_vote numeric
);
CREATE TABLE wedding.people (
people_id numeric PRIMARY KEY,
name text,
country text,
is_male text,
age numeric
);
CREATE TABLE wedding.church (
church_id numeric PRIMARY KEY,
name text,
organized_by text,
open_date date,
continuation_of text
);
CREATE TABLE wedding.wedding (
church_id numeric PRIMARY KEY,
male_id numeric,
female_id numeric,
year numeric
);
CREATE TABLE news_report.event (
event_id numeric PRIMARY KEY,
date_value date,
venue text,
name text,
event_attendance numeric
);
CREATE TABLE news_report.journalist (
journalist_id numeric PRIMARY KEY,
name text,
nationality text,
age text,
years_working numeric
);
CREATE TABLE news_report.news_report (
journalist_id numeric PRIMARY KEY,
event_id numeric,
work_type text
);
CREATE TABLE wine_1.grapes (
id numeric PRIMARY KEY,
grape text,
color text
);
CREATE TABLE wine_1.appellations (
no numeric PRIMARY KEY,
appelation text,
county text,
state text,
area text,
isava text
);
CREATE TABLE wine_1.wine (
no numeric,
grape text,
winery text,
appelation text,
state text,
name text,
year numeric,
price numeric,
score numeric,
cases numeric,
drink text
);
CREATE TABLE customers_and_addresses.Addresses (
address_id numeric PRIMARY KEY,
address_content text,
city text,
zip_postcode text,
state_province_county text,
country text,
other_address_details text
);
CREATE TABLE customers_and_addresses.Products (
product_id numeric PRIMARY KEY,
product_details text
);
CREATE TABLE customers_and_addresses.Customers (
customer_id numeric PRIMARY KEY,
payment_method text,
customer_name text,
date_became_customer date,
other_customer_details text
);
CREATE TABLE customers_and_addresses.Customer_Addresses (
customer_id numeric,
address_id numeric,
date_address_from date,
address_type text,
date_address_to date
);
CREATE TABLE customers_and_addresses.Customer_Contact_Channels (
customer_id numeric,
channel_code text,
active_from_date date,
active_to_date date,
contact_number text
);
CREATE TABLE customers_and_addresses.Customer_Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
order_status text,
order_date date,
order_details text
);
CREATE TABLE customers_and_addresses.Order_Items (
order_id numeric,
product_id numeric,
order_quantity text
);
CREATE TABLE protein_institute.building (
building_id text PRIMARY KEY,
name text,
street_address text,
years_as_tallest text,
height_feet numeric,
floors numeric
);
CREATE TABLE protein_institute.Institution (
institution_id text PRIMARY KEY,
institution text,
location text,
founded numeric,
type text,
enrollment numeric,
team text,
primary_conference text,
building_id text
);
CREATE TABLE protein_institute.protein (
common_name text PRIMARY KEY,
protein_name text,
divergence_from_human_lineage numeric,
accession_number text,
sequence_length numeric,
sequence_identity_to_human_protein text,
institution_id text
);
CREATE TABLE school_player.school (
school_id numeric PRIMARY KEY,
school text,
location text,
enrollment numeric,
founded numeric,
denomination text,
boys_or_girls text,
day_or_boarding text,
year_entered_competition numeric,
school_colors text
);
CREATE TABLE school_player.school_details (
school_id numeric PRIMARY KEY,
nickname text,
colors text,
league text,
class text,
division text
);
CREATE TABLE school_player.school_performance (
school_id numeric PRIMARY KEY,
school_year text,
class_a text,
class_aa text
);
CREATE TABLE school_player.player (
player_id numeric PRIMARY KEY,
player text,
team text,
age numeric,
position text,
school_id numeric
);
CREATE TABLE phone_1.chip_model (
model_name text PRIMARY KEY,
launch_year numeric,
ram_mib numeric,
rom_mib numeric,
slots text,
wifi text,
bluetooth text
);
CREATE TABLE phone_1.screen_mode (
graphics_mode numeric PRIMARY KEY,
char_cells text,
pixels text,
hardware_colours numeric,
used_kb numeric,
map text,
type text
);
CREATE TABLE phone_1.phone (
company_name text,
hardware_model_name text PRIMARY KEY,
accreditation_type text,
accreditation_level text,
date_value date,
chip_model text,
screen_mode text
);
CREATE TABLE tvshow.TV_Channel (
id text PRIMARY KEY,
series_name text,
country text,
language text,
content text,
pixel_aspect_ratio_par text,
hight_definition_tv text,
pay_per_view_ppv text,
package_option text
);
CREATE TABLE tvshow.TV_series (
id numeric PRIMARY KEY,
episode text,
air_date date,
rating text,
share numeric,
rating_share text,
viewers_m text,
weekly_rank numeric,
channel text
);
CREATE TABLE tvshow.Cartoon (
id numeric PRIMARY KEY,
title text,
directed_by text,
written_by text,
original_air_date date,
production_code numeric,
channel text
);
CREATE TABLE wrestler.wrestler (
wrestler_id numeric PRIMARY KEY,
name text,
reign text,
days_held text,
location text,
event text
);
CREATE TABLE wrestler.Elimination (
elimination_id text PRIMARY KEY,
wrestler_id text,
team text,
eliminated_by text,
elimination_move text,
time text
);
CREATE TABLE customer_complaints.Staff (
staff_id numeric PRIMARY KEY,
gender text,
first_name text,
last_name text,
email_address text,
phone_number text
);
CREATE TABLE customer_complaints.Customers (
customer_id numeric PRIMARY KEY,
customer_type_code text,
address_line_1 text,
address_line_2 text,
town_city text,
state text,
email_address text,
phone_number text
);
CREATE TABLE customer_complaints.Products (
product_id numeric PRIMARY KEY,
parent_product_id numeric,
product_category_code text,
date_product_first_available date,
date_product_discontinued date,
product_name text,
product_description text,
product_price numeric
);
CREATE TABLE customer_complaints.Complaints (
complaint_id numeric,
product_id numeric,
customer_id numeric,
complaint_outcome_code text,
complaint_status_code text,
complaint_type_code text,
date_complaint_raised date,
date_complaint_closed date,
staff_id numeric
);
CREATE TABLE department_management.department (
department_id numeric PRIMARY KEY,
name text,
creation text,
ranking numeric,
budget_in_billions numeric,
num_employees numeric
);
CREATE TABLE department_management.head (
head_id numeric PRIMARY KEY,
name text,
born_state text,
age numeric
);
CREATE TABLE department_management.management (
department_id numeric PRIMARY KEY,
head_id numeric,
temporary_acting text
);
CREATE TABLE customers_and_products_contacts.Addresses (
address_id numeric PRIMARY KEY,
line_1_number_building text,
city text,
zip_postcode text,
state_province_county text,
country text
);
CREATE TABLE customers_and_products_contacts.Products (
product_id numeric PRIMARY KEY,
product_type_code text,
product_name text,
product_price numeric
);
CREATE TABLE customers_and_products_contacts.Customers (
customer_id numeric PRIMARY KEY,
payment_method_code text,
customer_number text,
customer_name text,
customer_address text,
customer_phone text,
customer_email text
);
CREATE TABLE customers_and_products_contacts.Contacts (
contact_id numeric PRIMARY KEY,
customer_id numeric,
gender text,
first_name text,
last_name text,
contact_phone text
);
CREATE TABLE customers_and_products_contacts.Customer_Address_History (
customer_id numeric,
address_id numeric,
date_from date,
date_to date
);
CREATE TABLE customers_and_products_contacts.Customer_Orders (
order_id numeric PRIMARY KEY,
customer_id numeric,
order_date date,
order_status_code text
);
CREATE TABLE customers_and_products_contacts.Order_Items (
order_item_id numeric,
order_id numeric,
product_id numeric,
order_quantity text
);
CREATE TABLE company_1.works_on (
essn numeric PRIMARY KEY,
pno numeric,
hours numeric
);
CREATE TABLE company_1.employee (
fname text,
minit text,
lname text,
ssn numeric PRIMARY KEY,
bdate date,
address text,
sex text,
salary numeric,
super_ssn numeric,
dno numeric
);
CREATE TABLE company_1.department (
dname text,
dnumber numeric PRIMARY KEY,
mgr_ssn numeric,
mgr_start_date date
);
CREATE TABLE company_1.project (
pname text,
pnumber numeric PRIMARY KEY,
plocation text,
dnum numeric
);
CREATE TABLE company_1.dependent (
essn numeric PRIMARY KEY,
dependent_name text,
sex text,
bdate date,
relationship text
);
CREATE TABLE company_1.dept_locations (
dnumber numeric PRIMARY KEY,
dlocation text
);
CREATE TABLE workshop_paper.workshop (
workshop_id numeric PRIMARY KEY,
date_value date,
venue text,
name text
);
CREATE TABLE workshop_paper.submission (
submission_id numeric PRIMARY KEY,
scores numeric,
author text,
college text
);
CREATE TABLE workshop_paper.Acceptance (
submission_id numeric PRIMARY KEY,
workshop_id numeric,
result text
);
CREATE TABLE epinions_1.item (
i_id numeric PRIMARY KEY,
title text
);
CREATE TABLE epinions_1.review (
a_id numeric PRIMARY KEY,
u_id numeric,
i_id numeric,
rating numeric,
rank numeric
);
CREATE TABLE epinions_1.useracct (
u_id numeric PRIMARY KEY,
name text
);
CREATE TABLE epinions_1.trust (
source_u_id numeric,
target_u_id numeric,
trust numeric
);
CREATE TABLE party_host.party (
party_id numeric PRIMARY KEY,
party_theme text,
location text,
first_year text,
last_year text,
number_of_hosts numeric
);
CREATE TABLE party_host.host (
host_id numeric PRIMARY KEY,
name text,
nationality text,
age text
);
CREATE TABLE party_host.party_host (
party_id numeric PRIMARY KEY,
host_id numeric,
is_main_in_charge boolean
);
CREATE TABLE product_catalog.Attribute_Definitions (
attribute_id numeric PRIMARY KEY,
attribute_name text,
attribute_data_type text
);
CREATE TABLE product_catalog.Catalogs (
catalog_id numeric PRIMARY KEY,
catalog_name text,
catalog_publisher text,
date_of_publication date,
date_of_latest_revision date
);
CREATE TABLE product_catalog.Catalog_Structure (
catalog_level_number numeric PRIMARY KEY,
catalog_id numeric,
catalog_level_name text
);
CREATE TABLE product_catalog.Catalog_Contents (
catalog_entry_id numeric PRIMARY KEY,
catalog_level_number numeric,
parent_entry_id numeric,
previous_entry_id numeric,
next_entry_id numeric,
catalog_entry_name text,
product_stock_number text,
price_in_dollars numeric,
price_in_euros numeric,
price_in_pounds numeric,
capacity text,
length text,
height text,
width text
);
CREATE TABLE product_catalog.Catalog_Contents_Additional_Attributes (
catalog_entry_id numeric,
catalog_level_number numeric,
attribute_id numeric,
attribute_value text
);
