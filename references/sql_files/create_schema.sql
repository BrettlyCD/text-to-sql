/*
created with this python function against the created list of schemas in ../../notebooks/1.0 Data Wrangling - DB.ipynb
with open('/Users/brettly/Sboard/projects/text-to-sql/references/sql_files/create_schema.sql', 'w') as myFile:
    for schema in schemas:
        statement = "CREATE SCHEMA "+schema+";\n"
        myFile.write(statement)
*/

CREATE SCHEMA academic;
CREATE SCHEMA activity_1;
CREATE SCHEMA aircraft;
CREATE SCHEMA allergy_1;
CREATE SCHEMA apartment_rentals;
CREATE SCHEMA architecture;
CREATE SCHEMA assets_maintenance;
CREATE SCHEMA baseball_1;
CREATE SCHEMA battle_death;
CREATE SCHEMA behavior_monitoring;
CREATE SCHEMA bike_1;
CREATE SCHEMA body_builder;
CREATE SCHEMA book_2;
CREATE SCHEMA browser_web;
CREATE SCHEMA candidate_poll;
CREATE SCHEMA car_1;
CREATE SCHEMA chinook_1;
CREATE SCHEMA cinema;
CREATE SCHEMA city_record;
CREATE SCHEMA climbing;
CREATE SCHEMA club_1;
CREATE SCHEMA coffee_shop;
CREATE SCHEMA college_1;
CREATE SCHEMA college_2;
CREATE SCHEMA college_3;
CREATE SCHEMA company_1;
CREATE SCHEMA company_employee;
CREATE SCHEMA company_office;
CREATE SCHEMA concert_singer;
CREATE SCHEMA county_public_safety;
CREATE SCHEMA course_teach;
CREATE SCHEMA cre_Doc_Control_Systems;
CREATE SCHEMA cre_Doc_Template_Mgt;
CREATE SCHEMA cre_Doc_Tracking_DB;
CREATE SCHEMA cre_Docs_and_Epenses;
CREATE SCHEMA cre_Drama_Workshop_Groups;
CREATE SCHEMA cre_Theme_park;
CREATE SCHEMA csu_1;
CREATE SCHEMA culture_company;
CREATE SCHEMA customer_complaints;
CREATE SCHEMA customer_deliveries;
CREATE SCHEMA customers_and_addresses;
CREATE SCHEMA customers_and_invoices;
CREATE SCHEMA customers_and_products_contacts;
CREATE SCHEMA customers_campaigns_ecommerce;
CREATE SCHEMA customers_card_transactions;
CREATE SCHEMA debate;
CREATE SCHEMA decoration_competition;
CREATE SCHEMA department_management;
CREATE SCHEMA department_store;
CREATE SCHEMA device;
CREATE SCHEMA document_management;
CREATE SCHEMA dog_kennels;
CREATE SCHEMA dorm_1;
CREATE SCHEMA driving_school;
CREATE SCHEMA e_government;
CREATE SCHEMA e_learning;
CREATE SCHEMA election;
CREATE SCHEMA election_representative;
CREATE SCHEMA employee_hire_evaluation;
CREATE SCHEMA entertainment_awards;
CREATE SCHEMA entrepreneur;
CREATE SCHEMA epinions_1;
CREATE SCHEMA farm;
CREATE SCHEMA film_rank;
CREATE SCHEMA flight_1;
CREATE SCHEMA flight_2;
CREATE SCHEMA flight_4;
CREATE SCHEMA flight_company;
CREATE SCHEMA formula_1;
CREATE SCHEMA game_1;
CREATE SCHEMA game_injury;
CREATE SCHEMA gas_company;
CREATE SCHEMA geo;
CREATE SCHEMA gymnast;
CREATE SCHEMA hospital_1;
CREATE SCHEMA hr_1;
CREATE SCHEMA icfp_1;
CREATE SCHEMA imdb;
CREATE SCHEMA inn_1;
CREATE SCHEMA insurance_and_eClaims;
CREATE SCHEMA insurance_fnol;
CREATE SCHEMA insurance_policies;
CREATE SCHEMA journal_committee;
CREATE SCHEMA loan_1;
CREATE SCHEMA local_govt_and_lot;
CREATE SCHEMA local_govt_in_alabama;
CREATE SCHEMA local_govt_mdm;
CREATE SCHEMA machine_repair;
CREATE SCHEMA manufactory_1;
CREATE SCHEMA manufacturer;
CREATE SCHEMA match_season;
CREATE SCHEMA medicine_enzyme_interaction;
CREATE SCHEMA mountain_photos;
CREATE SCHEMA movie_1;
CREATE SCHEMA museum_visit;
CREATE SCHEMA music_1;
CREATE SCHEMA music_2;
CREATE SCHEMA music_4;
CREATE SCHEMA musical;
CREATE SCHEMA network_1;
CREATE SCHEMA network_2;
CREATE SCHEMA news_report;
CREATE SCHEMA orchestra;
CREATE SCHEMA party_host;
CREATE SCHEMA party_people;
CREATE SCHEMA performance_attendance;
CREATE SCHEMA perpetrator;
CREATE SCHEMA pets_1;
CREATE SCHEMA phone_1;
CREATE SCHEMA phone_market;
CREATE SCHEMA pilot_record;
CREATE SCHEMA poker_player;
CREATE SCHEMA product_catalog;
CREATE SCHEMA products_for_hire;
CREATE SCHEMA products_gen_characteristics;
CREATE SCHEMA program_share;
CREATE SCHEMA protein_institute;
CREATE SCHEMA race_track;
CREATE SCHEMA railway;
CREATE SCHEMA real_estate_properties;
CREATE SCHEMA restaurant_1;
CREATE SCHEMA restaurants;
CREATE SCHEMA riding_club;
CREATE SCHEMA roller_coaster;
CREATE SCHEMA sakila_1;
CREATE SCHEMA scholar;
CREATE SCHEMA school_bus;
CREATE SCHEMA school_finance;
CREATE SCHEMA school_player;
CREATE SCHEMA scientist_1;
CREATE SCHEMA ship_1;
CREATE SCHEMA ship_mission;
CREATE SCHEMA shop_membership;
CREATE SCHEMA singer;
CREATE SCHEMA small_bank_1;
CREATE SCHEMA soccer_1;
CREATE SCHEMA soccer_2;
CREATE SCHEMA solvency_ii;
CREATE SCHEMA sports_competition;
CREATE SCHEMA station_weather;
CREATE SCHEMA store_1;
CREATE SCHEMA store_product;
CREATE SCHEMA storm_record;
CREATE SCHEMA student_1;
CREATE SCHEMA student_assessment;
CREATE SCHEMA student_transcripts_tracking;
CREATE SCHEMA swimming;
CREATE SCHEMA theme_gallery;
CREATE SCHEMA tracking_grants_for_research;
CREATE SCHEMA tracking_orders;
CREATE SCHEMA tracking_share_transactions;
CREATE SCHEMA tracking_software_problems;
CREATE SCHEMA train_station;
CREATE SCHEMA tvshow;
CREATE SCHEMA twitter_1;
CREATE SCHEMA university_basketball;
CREATE SCHEMA voter_1;
CREATE SCHEMA voter_2;
CREATE SCHEMA wedding;
CREATE SCHEMA wine_1;
CREATE SCHEMA workshop_paper;
CREATE SCHEMA world_1;
CREATE SCHEMA wrestler;
CREATE SCHEMA wta_1;
CREATE SCHEMA yelp;