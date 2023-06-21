/*
Create with the help of chatGPT, ran in python notebook ../../notebooks/1.0 Data Wrangling - DB.ipynb
with open('/Users/brettly/Sboard/projects/text-to-sql/references/sql_files/alter_tables.sql', 'w') as fkFile:
    for statement in alter_statements:
        fkFile.write(statement)
*/

ALTER TABLE perpetrator.perpetrator
ADD CONSTRAINT people_id_fk
FOREIGN KEY (people_id)
REFERENCES perpetrator.people(People_ID);

ALTER TABLE college_2.course
ADD CONSTRAINT dept_name_fk
FOREIGN KEY (dept_name)
REFERENCES college_2.department(dept_name);

ALTER TABLE college_2.instructor
ADD CONSTRAINT dept_name_fk
FOREIGN KEY (dept_name)
REFERENCES college_2.department(dept_name);

ALTER TABLE college_2.section
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES college_2.course(course_id);

ALTER TABLE college_2.section
ADD CONSTRAINT building_fk
FOREIGN KEY (building)
REFERENCES college_2.classroom(building);

ALTER TABLE college_2.section
ADD CONSTRAINT room_number_fk
FOREIGN KEY (room_number)
REFERENCES college_2.classroom(room_number);

ALTER TABLE college_2.teaches
ADD CONSTRAINT id_fk
FOREIGN KEY (id)
REFERENCES college_2.instructor(ID);

ALTER TABLE college_2.teaches
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES college_2.section(course_id);

ALTER TABLE college_2.teaches
ADD CONSTRAINT sec_id_fk
FOREIGN KEY (sec_id)
REFERENCES college_2.section(sec_id);

ALTER TABLE college_2.teaches
ADD CONSTRAINT semester_fk
FOREIGN KEY (semester)
REFERENCES college_2.section(semester);

ALTER TABLE college_2.teaches
ADD CONSTRAINT year_fk
FOREIGN KEY (year)
REFERENCES college_2.section(year);

ALTER TABLE college_2.student
ADD CONSTRAINT dept_name_fk
FOREIGN KEY (dept_name)
REFERENCES college_2.department(dept_name);

ALTER TABLE college_2.takes
ADD CONSTRAINT id_fk
FOREIGN KEY (id)
REFERENCES college_2.student(ID);

ALTER TABLE college_2.takes
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES college_2.section(course_id);

ALTER TABLE college_2.takes
ADD CONSTRAINT sec_id_fk
FOREIGN KEY (sec_id)
REFERENCES college_2.section(sec_id);

ALTER TABLE college_2.takes
ADD CONSTRAINT semester_fk
FOREIGN KEY (semester)
REFERENCES college_2.section(semester);

ALTER TABLE college_2.takes
ADD CONSTRAINT year_fk
FOREIGN KEY (year)
REFERENCES college_2.section(year);

ALTER TABLE college_2.advisor
ADD CONSTRAINT s_id_fk
FOREIGN KEY (s_id)
REFERENCES college_2.student(ID);

ALTER TABLE college_2.advisor
ADD CONSTRAINT i_id_fk
FOREIGN KEY (i_id)
REFERENCES college_2.instructor(ID);

ALTER TABLE college_2.prereq
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES college_2.course(course_id);

ALTER TABLE college_2.prereq
ADD CONSTRAINT prereq_id_fk
FOREIGN KEY (prereq_id)
REFERENCES college_2.course(course_id);

ALTER TABLE flight_company.flight
ADD CONSTRAINT airport_id_fk
FOREIGN KEY (airport_id)
REFERENCES flight_company.airport(id);

ALTER TABLE flight_company.flight
ADD CONSTRAINT company_id_fk
FOREIGN KEY (company_id)
REFERENCES flight_company.operate_company(id);

ALTER TABLE icfp_1.Authorship
ADD CONSTRAINT authid_fk
FOREIGN KEY (authid)
REFERENCES icfp_1.Authors(authID);

ALTER TABLE icfp_1.Authorship
ADD CONSTRAINT instid_fk
FOREIGN KEY (instid)
REFERENCES icfp_1.Inst(instID);

ALTER TABLE icfp_1.Authorship
ADD CONSTRAINT paperid_fk
FOREIGN KEY (paperid)
REFERENCES icfp_1.Papers(paperID);

ALTER TABLE body_builder.body_builder
ADD CONSTRAINT people_id_fk
FOREIGN KEY (people_id)
REFERENCES body_builder.people(People_ID);

ALTER TABLE storm_record.affected_region
ADD CONSTRAINT region_id_fk
FOREIGN KEY (region_id)
REFERENCES storm_record.region(Region_id);

ALTER TABLE storm_record.affected_region
ADD CONSTRAINT storm_id_fk
FOREIGN KEY (storm_id)
REFERENCES storm_record.storm(Storm_ID);

ALTER TABLE pilot_record.pilot_record
ADD CONSTRAINT pilot_id_fk
FOREIGN KEY (pilot_id)
REFERENCES pilot_record.pilot(Pilot_ID);

ALTER TABLE pilot_record.pilot_record
ADD CONSTRAINT aircraft_id_fk
FOREIGN KEY (aircraft_id)
REFERENCES pilot_record.aircraft(Aircraft_ID);

ALTER TABLE race_track.race
ADD CONSTRAINT track_id_fk
FOREIGN KEY (track_id)
REFERENCES race_track.track(Track_ID);

ALTER TABLE academic.domain_author
ADD CONSTRAINT aid_fk
FOREIGN KEY (aid)
REFERENCES academic.author(aid);

ALTER TABLE academic.domain_author
ADD CONSTRAINT did_fk
FOREIGN KEY (did)
REFERENCES academic.domain(did);

ALTER TABLE academic.domain_conference
ADD CONSTRAINT cid_fk
FOREIGN KEY (cid)
REFERENCES academic.conference(cid);

ALTER TABLE academic.domain_conference
ADD CONSTRAINT did_fk
FOREIGN KEY (did)
REFERENCES academic.domain(did);

ALTER TABLE academic.domain_journal
ADD CONSTRAINT did_fk
FOREIGN KEY (did)
REFERENCES academic.domain(did);

ALTER TABLE academic.domain_journal
ADD CONSTRAINT jid_fk
FOREIGN KEY (jid)
REFERENCES academic.journal(jid);

ALTER TABLE academic.domain_keyword
ADD CONSTRAINT did_fk
FOREIGN KEY (did)
REFERENCES academic.domain(did);

ALTER TABLE academic.domain_keyword
ADD CONSTRAINT kid_fk
FOREIGN KEY (kid)
REFERENCES academic.keyword(kid);

ALTER TABLE academic.publication
ADD CONSTRAINT cid_fk
FOREIGN KEY (cid)
REFERENCES academic.conference(cid);

ALTER TABLE academic.publication
ADD CONSTRAINT jid_fk
FOREIGN KEY (jid)
REFERENCES academic.journal(jid);

ALTER TABLE academic.domain_publication
ADD CONSTRAINT did_fk
FOREIGN KEY (did)
REFERENCES academic.domain(did);

ALTER TABLE academic.domain_publication
ADD CONSTRAINT pid_fk
FOREIGN KEY (pid)
REFERENCES academic.publication(pid);

ALTER TABLE academic.publication_keyword
ADD CONSTRAINT pid_fk
FOREIGN KEY (pid)
REFERENCES academic.publication(pid);

ALTER TABLE academic.publication_keyword
ADD CONSTRAINT kid_fk
FOREIGN KEY (kid)
REFERENCES academic.keyword(kid);

ALTER TABLE academic.writes
ADD CONSTRAINT aid_fk
FOREIGN KEY (aid)
REFERENCES academic.author(aid);

ALTER TABLE academic.writes
ADD CONSTRAINT pid_fk
FOREIGN KEY (pid)
REFERENCES academic.publication(pid);

ALTER TABLE academic.cite
ADD CONSTRAINT cited_fk
FOREIGN KEY (cited)
REFERENCES academic.publication(pid);

ALTER TABLE academic.cite
ADD CONSTRAINT citing_fk
FOREIGN KEY (citing)
REFERENCES academic.publication(pid);

ALTER TABLE department_store.Supplier_Addresses
ADD CONSTRAINT supplier_id_fk
FOREIGN KEY (supplier_id)
REFERENCES department_store.Suppliers(supplier_id);

ALTER TABLE department_store.Supplier_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES department_store.Addresses(address_id);

ALTER TABLE department_store.Customer_Addresses
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES department_store.Customers(customer_id);

ALTER TABLE department_store.Customer_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES department_store.Addresses(address_id);

ALTER TABLE department_store.Customer_Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES department_store.Customers(customer_id);

ALTER TABLE department_store.Department_Stores
ADD CONSTRAINT dept_store_chain_id_fk
FOREIGN KEY (dept_store_chain_id)
REFERENCES department_store.Department_Store_Chain(dept_store_chain_id);

ALTER TABLE department_store.Departments
ADD CONSTRAINT dept_store_id_fk
FOREIGN KEY (dept_store_id)
REFERENCES department_store.Department_Stores(dept_store_id);

ALTER TABLE department_store.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES department_store.Customer_Orders(order_id);

ALTER TABLE department_store.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES department_store.Products(product_id);

ALTER TABLE department_store.Product_Suppliers
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES department_store.Products(product_id);

ALTER TABLE department_store.Product_Suppliers
ADD CONSTRAINT supplier_id_fk
FOREIGN KEY (supplier_id)
REFERENCES department_store.Suppliers(supplier_id);

ALTER TABLE department_store.Staff_Department_Assignments
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
REFERENCES department_store.Staff(staff_id);

ALTER TABLE department_store.Staff_Department_Assignments
ADD CONSTRAINT department_id_fk
FOREIGN KEY (department_id)
REFERENCES department_store.Departments(department_id);

ALTER TABLE music_4.volume
ADD CONSTRAINT artist_id_fk
FOREIGN KEY (artist_id)
REFERENCES music_4.artist(Artist_ID);

ALTER TABLE music_4.music_festival
ADD CONSTRAINT volume_fk
FOREIGN KEY (volume)
REFERENCES music_4.volume(Volume_ID);

ALTER TABLE insurance_fnol.Customers_Policies
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES insurance_fnol.Customers(Customer_ID);

ALTER TABLE insurance_fnol.Customers_Policies
ADD CONSTRAINT policy_id_fk
FOREIGN KEY (policy_id)
REFERENCES insurance_fnol.Available_Policies(Policy_ID);

ALTER TABLE insurance_fnol.First_Notification_of_Loss
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES insurance_fnol.Customers_Policies(Customer_ID);

ALTER TABLE insurance_fnol.First_Notification_of_Loss
ADD CONSTRAINT policy_id_fk
FOREIGN KEY (policy_id)
REFERENCES insurance_fnol.Customers_Policies(Policy_ID);

ALTER TABLE insurance_fnol.First_Notification_of_Loss
ADD CONSTRAINT service_id_fk
FOREIGN KEY (service_id)
REFERENCES insurance_fnol.Services(Service_ID);

ALTER TABLE insurance_fnol.Claims
ADD CONSTRAINT fnol_id_fk
FOREIGN KEY (fnol_id)
REFERENCES insurance_fnol.First_Notification_of_Loss(FNOL_ID);

ALTER TABLE insurance_fnol.Settlements
ADD CONSTRAINT claim_id_fk
FOREIGN KEY (claim_id)
REFERENCES insurance_fnol.Claims(Claim_ID);

ALTER TABLE cinema.schedule
ADD CONSTRAINT cinema_id_fk
FOREIGN KEY (cinema_id)
REFERENCES cinema.cinema(Cinema_ID);

ALTER TABLE cinema.schedule
ADD CONSTRAINT film_id_fk
FOREIGN KEY (film_id)
REFERENCES cinema.film(Film_ID);

ALTER TABLE decoration_competition.member
ADD CONSTRAINT college_id_fk
FOREIGN KEY (college_id)
REFERENCES decoration_competition.college(College_ID);

ALTER TABLE decoration_competition.round
ADD CONSTRAINT member_id_fk
FOREIGN KEY (member_id)
REFERENCES decoration_competition.member(Member_ID);

ALTER TABLE phone_market.phone_market
ADD CONSTRAINT market_id_fk
FOREIGN KEY (market_id)
REFERENCES phone_market.market(Market_ID);

ALTER TABLE phone_market.phone_market
ADD CONSTRAINT phone_id_fk
FOREIGN KEY (phone_id)
REFERENCES phone_market.phone(Phone_ID);

ALTER TABLE store_product.store_product
ADD CONSTRAINT store_id_fk
FOREIGN KEY (store_id)
REFERENCES store_product.store(Store_ID);

ALTER TABLE store_product.store_district
ADD CONSTRAINT store_id_fk
FOREIGN KEY (store_id)
REFERENCES store_product.store(Store_ID);

ALTER TABLE store_product.store_district
ADD CONSTRAINT district_id_fk
FOREIGN KEY (district_id)
REFERENCES store_product.district(District_ID);

ALTER TABLE assets_maintenance.Maintenance_Contracts
ADD CONSTRAINT maintenance_contract_company_id_fk
FOREIGN KEY (maintenance_contract_company_id)
REFERENCES assets_maintenance.Third_Party_Companies(company_id);

ALTER TABLE assets_maintenance.Assets
ADD CONSTRAINT maintenance_contract_id_fk
FOREIGN KEY (maintenance_contract_id)
REFERENCES assets_maintenance.Maintenance_Contracts(maintenance_contract_id);

ALTER TABLE assets_maintenance.Assets
ADD CONSTRAINT supplier_company_id_fk
FOREIGN KEY (supplier_company_id)
REFERENCES assets_maintenance.Third_Party_Companies(company_id);

ALTER TABLE assets_maintenance.Asset_Parts
ADD CONSTRAINT asset_id_fk
FOREIGN KEY (asset_id)
REFERENCES assets_maintenance.Assets(asset_id);

ALTER TABLE assets_maintenance.Asset_Parts
ADD CONSTRAINT part_id_fk
FOREIGN KEY (part_id)
REFERENCES assets_maintenance.Parts(part_id);

ALTER TABLE assets_maintenance.Maintenance_Engineers
ADD CONSTRAINT company_id_fk
FOREIGN KEY (company_id)
REFERENCES assets_maintenance.Third_Party_Companies(company_id);

ALTER TABLE assets_maintenance.Engineer_Skills
ADD CONSTRAINT engineer_id_fk
FOREIGN KEY (engineer_id)
REFERENCES assets_maintenance.Maintenance_Engineers(engineer_id);

ALTER TABLE assets_maintenance.Engineer_Skills
ADD CONSTRAINT skill_id_fk
FOREIGN KEY (skill_id)
REFERENCES assets_maintenance.Skills(skill_id);

ALTER TABLE assets_maintenance.Fault_Log
ADD CONSTRAINT asset_id_fk
FOREIGN KEY (asset_id)
REFERENCES assets_maintenance.Assets(asset_id);

ALTER TABLE assets_maintenance.Fault_Log
ADD CONSTRAINT recorded_by_staff_id_fk
FOREIGN KEY (recorded_by_staff_id)
REFERENCES assets_maintenance.Staff(staff_id);

ALTER TABLE assets_maintenance.Engineer_Visits
ADD CONSTRAINT contact_staff_id_fk
FOREIGN KEY (contact_staff_id)
REFERENCES assets_maintenance.Staff(staff_id);

ALTER TABLE assets_maintenance.Engineer_Visits
ADD CONSTRAINT engineer_id_fk
FOREIGN KEY (engineer_id)
REFERENCES assets_maintenance.Maintenance_Engineers(engineer_id);

ALTER TABLE assets_maintenance.Engineer_Visits
ADD CONSTRAINT fault_log_entry_id_fk
FOREIGN KEY (fault_log_entry_id)
REFERENCES assets_maintenance.Fault_Log(fault_log_entry_id);

ALTER TABLE assets_maintenance.Part_Faults
ADD CONSTRAINT part_id_fk
FOREIGN KEY (part_id)
REFERENCES assets_maintenance.Parts(part_id);

ALTER TABLE assets_maintenance.Fault_Log_Parts
ADD CONSTRAINT fault_log_entry_id_fk
FOREIGN KEY (fault_log_entry_id)
REFERENCES assets_maintenance.Fault_Log(fault_log_entry_id);

ALTER TABLE assets_maintenance.Fault_Log_Parts
ADD CONSTRAINT part_fault_id_fk
FOREIGN KEY (part_fault_id)
REFERENCES assets_maintenance.Part_Faults(part_fault_id);

ALTER TABLE assets_maintenance.Skills_Required_To_Fix
ADD CONSTRAINT part_fault_id_fk
FOREIGN KEY (part_fault_id)
REFERENCES assets_maintenance.Part_Faults(part_fault_id);

ALTER TABLE assets_maintenance.Skills_Required_To_Fix
ADD CONSTRAINT skill_id_fk
FOREIGN KEY (skill_id)
REFERENCES assets_maintenance.Skills(skill_id);

ALTER TABLE student_assessment.Students
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES student_assessment.People(person_id);

ALTER TABLE student_assessment.People_Addresses
ADD CONSTRAINT person_id_fk
FOREIGN KEY (person_id)
REFERENCES student_assessment.People(person_id);

ALTER TABLE student_assessment.People_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES student_assessment.Addresses(address_id);

ALTER TABLE student_assessment.Student_Course_Registrations
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES student_assessment.Students(student_id);

ALTER TABLE student_assessment.Student_Course_Registrations
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES student_assessment.Courses(course_id);

ALTER TABLE student_assessment.Student_Course_Attendance
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES student_assessment.Student_Course_Registrations(student_id);

ALTER TABLE student_assessment.Student_Course_Attendance
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES student_assessment.Student_Course_Registrations(course_id);

ALTER TABLE student_assessment.Candidates
ADD CONSTRAINT candidate_id_fk
FOREIGN KEY (candidate_id)
REFERENCES student_assessment.People(person_id);

ALTER TABLE student_assessment.Candidate_Assessments
ADD CONSTRAINT candidate_id_fk
FOREIGN KEY (candidate_id)
REFERENCES student_assessment.Candidates(candidate_id);

ALTER TABLE dog_kennels.Dogs
ADD CONSTRAINT owner_id_fk
FOREIGN KEY (owner_id)
REFERENCES dog_kennels.Owners(owner_id);

ALTER TABLE dog_kennels.Dogs
ADD CONSTRAINT breed_code_fk
FOREIGN KEY (breed_code)
REFERENCES dog_kennels.Breeds(breed_code);

ALTER TABLE dog_kennels.Dogs
ADD CONSTRAINT size_code_fk
FOREIGN KEY (size_code)
REFERENCES dog_kennels.Sizes(size_code);

ALTER TABLE dog_kennels.Treatments
ADD CONSTRAINT dog_id_fk
FOREIGN KEY (dog_id)
REFERENCES dog_kennels.Dogs(dog_id);

ALTER TABLE dog_kennels.Treatments
ADD CONSTRAINT professional_id_fk
FOREIGN KEY (professional_id)
REFERENCES dog_kennels.Professionals(professional_id);

ALTER TABLE dog_kennels.Treatments
ADD CONSTRAINT treatment_type_code_fk
FOREIGN KEY (treatment_type_code)
REFERENCES dog_kennels.Treatment_Types(treatment_type_code);

ALTER TABLE music_1.artist
ADD CONSTRAINT preferred_genre_fk
FOREIGN KEY (preferred_genre)
REFERENCES music_1.genre(g_name);

ALTER TABLE music_1.files
ADD CONSTRAINT artist_name_fk
FOREIGN KEY (artist_name)
REFERENCES music_1.artist(artist_name);

ALTER TABLE music_1.song
ADD CONSTRAINT artist_name_fk
FOREIGN KEY (artist_name)
REFERENCES music_1.artist(artist_name);

ALTER TABLE music_1.song
ADD CONSTRAINT f_id_fk
FOREIGN KEY (f_id)
REFERENCES music_1.files(f_id);

ALTER TABLE music_1.song
ADD CONSTRAINT genre_is_fk
FOREIGN KEY (genre_is)
REFERENCES music_1.genre(g_name);

ALTER TABLE company_employee.employment
ADD CONSTRAINT company_id_fk
FOREIGN KEY (company_id)
REFERENCES company_employee.company(Company_ID);

ALTER TABLE company_employee.employment
ADD CONSTRAINT people_id_fk
FOREIGN KEY (people_id)
REFERENCES company_employee.people(People_ID);

ALTER TABLE farm.farm_competition
ADD CONSTRAINT host_city_id_fk
FOREIGN KEY (host_city_id)
REFERENCES farm.city(City_ID);

ALTER TABLE farm.competition_record
ADD CONSTRAINT competition_id_fk
FOREIGN KEY (competition_id)
REFERENCES farm.farm_competition(Competition_ID);

ALTER TABLE farm.competition_record
ADD CONSTRAINT farm_id_fk
FOREIGN KEY (farm_id)
REFERENCES farm.farm(Farm_ID);

ALTER TABLE solvency_ii.Events
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES solvency_ii.Addresses(Address_ID);

ALTER TABLE solvency_ii.Events
ADD CONSTRAINT finance_id_fk
FOREIGN KEY (finance_id)
REFERENCES solvency_ii.Finances(Finance_ID);

ALTER TABLE solvency_ii.Events
ADD CONSTRAINT location_id_fk
FOREIGN KEY (location_id)
REFERENCES solvency_ii.Locations(Location_ID);

ALTER TABLE solvency_ii.Products_in_Events
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES solvency_ii.Events(Event_ID);

ALTER TABLE solvency_ii.Products_in_Events
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES solvency_ii.Products(Product_ID);

ALTER TABLE solvency_ii.Parties_in_Events
ADD CONSTRAINT party_id_fk
FOREIGN KEY (party_id)
REFERENCES solvency_ii.Parties(Party_ID);

ALTER TABLE solvency_ii.Parties_in_Events
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES solvency_ii.Events(Event_ID);

ALTER TABLE solvency_ii.Agreements
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES solvency_ii.Events(Event_ID);

ALTER TABLE solvency_ii.Assets_in_Events
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES solvency_ii.Events(Event_ID);

ALTER TABLE city_record.temperature
ADD CONSTRAINT city_id_fk
FOREIGN KEY (city_id)
REFERENCES city_record.city(City_ID);

ALTER TABLE city_record.hosting_city
ADD CONSTRAINT match_id_fk
FOREIGN KEY (match_id)
REFERENCES city_record.match(Match_ID);

ALTER TABLE city_record.hosting_city
ADD CONSTRAINT host_city_fk
FOREIGN KEY (host_city)
REFERENCES city_record.city(City_ID);

ALTER TABLE swimming.event
ADD CONSTRAINT stadium_id_fk
FOREIGN KEY (stadium_id)
REFERENCES swimming.stadium(ID);

ALTER TABLE swimming.record
ADD CONSTRAINT swimmer_id_fk
FOREIGN KEY (swimmer_id)
REFERENCES swimming.swimmer(ID);

ALTER TABLE swimming.record
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES swimming.event(ID);

ALTER TABLE flight_2.flights
ADD CONSTRAINT sourceairport_fk
FOREIGN KEY (sourceairport)
REFERENCES flight_2.airports(AirportCode);

ALTER TABLE flight_2.flights
ADD CONSTRAINT destairport_fk
FOREIGN KEY (destairport)
REFERENCES flight_2.airports(AirportCode);

ALTER TABLE election.election
ADD CONSTRAINT district_fk
FOREIGN KEY (district)
REFERENCES election.county(County_Id);

ALTER TABLE election.election
ADD CONSTRAINT party_fk
FOREIGN KEY (party)
REFERENCES election.party(Party_ID);

ALTER TABLE manufactory_1.Products
ADD CONSTRAINT manufacturer_fk
FOREIGN KEY (manufacturer)
REFERENCES manufactory_1.Manufacturers(Code);

ALTER TABLE debate.debate_people
ADD CONSTRAINT debate_id_fk
FOREIGN KEY (debate_id)
REFERENCES debate.debate(Debate_ID);

ALTER TABLE debate.debate_people
ADD CONSTRAINT affirmative_fk
FOREIGN KEY (affirmative)
REFERENCES debate.people(People_ID);

ALTER TABLE debate.debate_people
ADD CONSTRAINT negative_fk
FOREIGN KEY (negative)
REFERENCES debate.people(People_ID);

ALTER TABLE network_2.PersonFriend
ADD CONSTRAINT name_fk
FOREIGN KEY (name)
REFERENCES network_2.Person(name);

ALTER TABLE network_2.PersonFriend
ADD CONSTRAINT friend_fk
FOREIGN KEY (friend)
REFERENCES network_2.Person(name);

ALTER TABLE local_govt_in_alabama.Events
ADD CONSTRAINT service_id_fk
FOREIGN KEY (service_id)
REFERENCES local_govt_in_alabama.Services(Service_ID);

ALTER TABLE local_govt_in_alabama.Participants_in_Events
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES local_govt_in_alabama.Events(Event_ID);

ALTER TABLE local_govt_in_alabama.Participants_in_Events
ADD CONSTRAINT participant_id_fk
FOREIGN KEY (participant_id)
REFERENCES local_govt_in_alabama.Participants(Participant_ID);

ALTER TABLE climbing.climber
ADD CONSTRAINT mountain_id_fk
FOREIGN KEY (mountain_id)
REFERENCES climbing.mountain(Mountain_ID);

ALTER TABLE e_learning.Courses
ADD CONSTRAINT author_id_fk
FOREIGN KEY (author_id)
REFERENCES e_learning.Course_Authors_and_Tutors(author_id);

ALTER TABLE e_learning.Courses
ADD CONSTRAINT subject_id_fk
FOREIGN KEY (subject_id)
REFERENCES e_learning.Subjects(subject_id);

ALTER TABLE e_learning.Student_Course_Enrolment
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES e_learning.Students(student_id);

ALTER TABLE e_learning.Student_Course_Enrolment
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES e_learning.Courses(course_id);

ALTER TABLE e_learning.Student_Tests_Taken
ADD CONSTRAINT registration_id_fk
FOREIGN KEY (registration_id)
REFERENCES e_learning.Student_Course_Enrolment(registration_id);

ALTER TABLE scientist_1.AssignedTo
ADD CONSTRAINT scientist_fk
FOREIGN KEY (scientist)
REFERENCES scientist_1.Scientists(SSN);

ALTER TABLE scientist_1.AssignedTo
ADD CONSTRAINT project_fk
FOREIGN KEY (project)
REFERENCES scientist_1.Projects(Code);

ALTER TABLE ship_1.captain
ADD CONSTRAINT ship_id_fk
FOREIGN KEY (ship_id)
REFERENCES ship_1.Ship(Ship_ID);

ALTER TABLE entertainment_awards.nomination
ADD CONSTRAINT artwork_id_fk
FOREIGN KEY (artwork_id)
REFERENCES entertainment_awards.artwork(Artwork_ID);

ALTER TABLE entertainment_awards.nomination
ADD CONSTRAINT festival_id_fk
FOREIGN KEY (festival_id)
REFERENCES entertainment_awards.festival_detail(Festival_ID);

ALTER TABLE allergy_1.Has_Allergy
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES allergy_1.Student(StuID);

ALTER TABLE allergy_1.Has_Allergy
ADD CONSTRAINT allergy_fk
FOREIGN KEY (allergy)
REFERENCES allergy_1.Allergy_Type(Allergy);

ALTER TABLE imdb.cast
ADD CONSTRAINT msid_fk
FOREIGN KEY (msid)
REFERENCES imdb.copyright(msid);

ALTER TABLE imdb.cast
ADD CONSTRAINT aid_fk
FOREIGN KEY (aid)
REFERENCES imdb.actor(aid);

ALTER TABLE imdb.classification
ADD CONSTRAINT msid_fk
FOREIGN KEY (msid)
REFERENCES imdb.copyright(msid);

ALTER TABLE imdb.classification
ADD CONSTRAINT gid_fk
FOREIGN KEY (gid)
REFERENCES imdb.genre(gid);

ALTER TABLE imdb.directed_by
ADD CONSTRAINT msid_fk
FOREIGN KEY (msid)
REFERENCES imdb.copyright(msid);

ALTER TABLE imdb.directed_by
ADD CONSTRAINT did_fk
FOREIGN KEY (did)
REFERENCES imdb.director(did);

ALTER TABLE imdb.made_by
ADD CONSTRAINT msid_fk
FOREIGN KEY (msid)
REFERENCES imdb.copyright(msid);

ALTER TABLE imdb.made_by
ADD CONSTRAINT pid_fk
FOREIGN KEY (pid)
REFERENCES imdb.producer(pid);

ALTER TABLE imdb.tags
ADD CONSTRAINT msid_fk
FOREIGN KEY (msid)
REFERENCES imdb.copyright(msid);

ALTER TABLE imdb.written_by
ADD CONSTRAINT msid_fk
FOREIGN KEY (msid)
REFERENCES imdb.copyright(msid);

ALTER TABLE imdb.written_by
ADD CONSTRAINT wid_fk
FOREIGN KEY (wid)
REFERENCES imdb.writer(wid);

ALTER TABLE products_for_hire.Customers
ADD CONSTRAINT coupon_id_fk
FOREIGN KEY (coupon_id)
REFERENCES products_for_hire.Discount_Coupons(coupon_id);

ALTER TABLE products_for_hire.Bookings
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES products_for_hire.Customers(customer_id);

ALTER TABLE products_for_hire.Payments
ADD CONSTRAINT booking_id_fk
FOREIGN KEY (booking_id)
REFERENCES products_for_hire.Bookings(booking_id);

ALTER TABLE products_for_hire.Payments
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES products_for_hire.Customers(customer_id);

ALTER TABLE products_for_hire.Products_Booked
ADD CONSTRAINT booking_id_fk
FOREIGN KEY (booking_id)
REFERENCES products_for_hire.Bookings(booking_id);

ALTER TABLE products_for_hire.Products_Booked
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES products_for_hire.Products_for_Hire(product_id);

ALTER TABLE products_for_hire.View_Product_Availability
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES products_for_hire.Products_for_Hire(product_id);

ALTER TABLE products_for_hire.View_Product_Availability
ADD CONSTRAINT booking_id_fk
FOREIGN KEY (booking_id)
REFERENCES products_for_hire.Bookings(booking_id);

ALTER TABLE candidate_poll.candidate
ADD CONSTRAINT people_id_fk
FOREIGN KEY (people_id)
REFERENCES candidate_poll.people(People_ID);

ALTER TABLE chinook_1.Album
ADD CONSTRAINT artistid_fk
FOREIGN KEY (artistid)
REFERENCES chinook_1.Artist(ArtistId);

ALTER TABLE chinook_1.Customer
ADD CONSTRAINT supportrepid_fk
FOREIGN KEY (supportrepid)
REFERENCES chinook_1.Employee(EmployeeId);

ALTER TABLE chinook_1.Employee
ADD CONSTRAINT reportsto_fk
FOREIGN KEY (reportsto)
REFERENCES chinook_1.Employee(EmployeeId);

ALTER TABLE chinook_1.Invoice
ADD CONSTRAINT customerid_fk
FOREIGN KEY (customerid)
REFERENCES chinook_1.Customer(CustomerId);

ALTER TABLE chinook_1.InvoiceLine
ADD CONSTRAINT invoiceid_fk
FOREIGN KEY (invoiceid)
REFERENCES chinook_1.Invoice(InvoiceId);

ALTER TABLE chinook_1.InvoiceLine
ADD CONSTRAINT trackid_fk
FOREIGN KEY (trackid)
REFERENCES chinook_1.Track(TrackId);

ALTER TABLE chinook_1.PlaylistTrack
ADD CONSTRAINT playlistid_fk
FOREIGN KEY (playlistid)
REFERENCES chinook_1.Playlist(PlaylistId);

ALTER TABLE chinook_1.PlaylistTrack
ADD CONSTRAINT trackid_fk
FOREIGN KEY (trackid)
REFERENCES chinook_1.Track(TrackId);

ALTER TABLE chinook_1.Track
ADD CONSTRAINT albumid_fk
FOREIGN KEY (albumid)
REFERENCES chinook_1.Album(AlbumId);

ALTER TABLE chinook_1.Track
ADD CONSTRAINT mediatypeid_fk
FOREIGN KEY (mediatypeid)
REFERENCES chinook_1.MediaType(MediaTypeId);

ALTER TABLE chinook_1.Track
ADD CONSTRAINT genreid_fk
FOREIGN KEY (genreid)
REFERENCES chinook_1.Genre(GenreId);

ALTER TABLE flight_4.routes
ADD CONSTRAINT dst_apid_fk
FOREIGN KEY (dst_apid)
REFERENCES flight_4.airports(apid);

ALTER TABLE flight_4.routes
ADD CONSTRAINT src_apid_fk
FOREIGN KEY (src_apid)
REFERENCES flight_4.airports(apid);

ALTER TABLE flight_4.routes
ADD CONSTRAINT alid_fk
FOREIGN KEY (alid)
REFERENCES flight_4.airlines(alid);

ALTER TABLE pets_1.Has_Pet
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES pets_1.Student(StuID);

ALTER TABLE pets_1.Has_Pet
ADD CONSTRAINT petid_fk
FOREIGN KEY (petid)
REFERENCES pets_1.Pets(PetID);

ALTER TABLE dorm_1.Has_amenity
ADD CONSTRAINT dormid_fk
FOREIGN KEY (dormid)
REFERENCES dorm_1.Dorm(dormid);

ALTER TABLE dorm_1.Has_amenity
ADD CONSTRAINT amenid_fk
FOREIGN KEY (amenid)
REFERENCES dorm_1.Dorm_amenity(amenid);

ALTER TABLE dorm_1.Lives_in
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES dorm_1.Student(StuID);

ALTER TABLE dorm_1.Lives_in
ADD CONSTRAINT dormid_fk
FOREIGN KEY (dormid)
REFERENCES dorm_1.Dorm(dormid);

ALTER TABLE journal_committee.journal_committee
ADD CONSTRAINT editor_id_fk
FOREIGN KEY (editor_id)
REFERENCES journal_committee.editor(Editor_ID);

ALTER TABLE journal_committee.journal_committee
ADD CONSTRAINT journal_id_fk
FOREIGN KEY (journal_id)
REFERENCES journal_committee.journal(Journal_ID);

ALTER TABLE flight_1.flight
ADD CONSTRAINT aid_fk
FOREIGN KEY (aid)
REFERENCES flight_1.aircraft(aid);

ALTER TABLE flight_1.certificate
ADD CONSTRAINT eid_fk
FOREIGN KEY (eid)
REFERENCES flight_1.employee(eid);

ALTER TABLE flight_1.certificate
ADD CONSTRAINT aid_fk
FOREIGN KEY (aid)
REFERENCES flight_1.aircraft(aid);

ALTER TABLE medicine_enzyme_interaction.medicine_enzyme_interaction
ADD CONSTRAINT enzyme_id_fk
FOREIGN KEY (enzyme_id)
REFERENCES medicine_enzyme_interaction.enzyme(id);

ALTER TABLE medicine_enzyme_interaction.medicine_enzyme_interaction
ADD CONSTRAINT medicine_id_fk
FOREIGN KEY (medicine_id)
REFERENCES medicine_enzyme_interaction.medicine(id);

ALTER TABLE local_govt_and_lot.Residents
ADD CONSTRAINT property_id_fk
FOREIGN KEY (property_id)
REFERENCES local_govt_and_lot.Properties(property_id);

ALTER TABLE local_govt_and_lot.Services
ADD CONSTRAINT organization_id_fk
FOREIGN KEY (organization_id)
REFERENCES local_govt_and_lot.Organizations(organization_id);

ALTER TABLE local_govt_and_lot.Residents_Services
ADD CONSTRAINT resident_id_fk
FOREIGN KEY (resident_id)
REFERENCES local_govt_and_lot.Residents(resident_id);

ALTER TABLE local_govt_and_lot.Residents_Services
ADD CONSTRAINT service_id_fk
FOREIGN KEY (service_id)
REFERENCES local_govt_and_lot.Services(service_id);

ALTER TABLE local_govt_and_lot.Residents_Services
ADD CONSTRAINT date_moved_in_fk
FOREIGN KEY (date_moved_in)
REFERENCES local_govt_and_lot.Residents(date_moved_in);

ALTER TABLE local_govt_and_lot.Residents_Services
ADD CONSTRAINT property_id_fk
FOREIGN KEY (property_id)
REFERENCES local_govt_and_lot.Residents(property_id);

ALTER TABLE local_govt_and_lot.Things
ADD CONSTRAINT organization_id_fk
FOREIGN KEY (organization_id)
REFERENCES local_govt_and_lot.Organizations(organization_id);

ALTER TABLE local_govt_and_lot.Customer_Events
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES local_govt_and_lot.Customers(customer_id);

ALTER TABLE local_govt_and_lot.Customer_Events
ADD CONSTRAINT date_moved_in_fk
FOREIGN KEY (date_moved_in)
REFERENCES local_govt_and_lot.Residents(date_moved_in);

ALTER TABLE local_govt_and_lot.Customer_Events
ADD CONSTRAINT property_id_fk
FOREIGN KEY (property_id)
REFERENCES local_govt_and_lot.Residents(property_id);

ALTER TABLE local_govt_and_lot.Customer_Events
ADD CONSTRAINT resident_id_fk
FOREIGN KEY (resident_id)
REFERENCES local_govt_and_lot.Residents(resident_id);

ALTER TABLE local_govt_and_lot.Customer_Events
ADD CONSTRAINT thing_id_fk
FOREIGN KEY (thing_id)
REFERENCES local_govt_and_lot.Things(thing_id);

ALTER TABLE local_govt_and_lot.Customer_Event_Notes
ADD CONSTRAINT customer_event_id_fk
FOREIGN KEY (customer_event_id)
REFERENCES local_govt_and_lot.Customer_Events(Customer_Event_ID);

ALTER TABLE local_govt_and_lot.Timed_Status_of_Things
ADD CONSTRAINT thing_id_fk
FOREIGN KEY (thing_id)
REFERENCES local_govt_and_lot.Things(thing_id);

ALTER TABLE local_govt_and_lot.Timed_Locations_of_Things
ADD CONSTRAINT thing_id_fk
FOREIGN KEY (thing_id)
REFERENCES local_govt_and_lot.Things(thing_id);

ALTER TABLE station_weather.route
ADD CONSTRAINT train_id_fk
FOREIGN KEY (train_id)
REFERENCES station_weather.train(id);

ALTER TABLE station_weather.route
ADD CONSTRAINT station_id_fk
FOREIGN KEY (station_id)
REFERENCES station_weather.station(id);

ALTER TABLE station_weather.weekly_weather
ADD CONSTRAINT station_id_fk
FOREIGN KEY (station_id)
REFERENCES station_weather.station(id);

ALTER TABLE shop_membership.membership_register_branch
ADD CONSTRAINT member_id_fk
FOREIGN KEY (member_id)
REFERENCES shop_membership.member(Member_ID);

ALTER TABLE shop_membership.membership_register_branch
ADD CONSTRAINT branch_id_fk
FOREIGN KEY (branch_id)
REFERENCES shop_membership.branch(Branch_ID);

ALTER TABLE shop_membership.purchase
ADD CONSTRAINT member_id_fk
FOREIGN KEY (member_id)
REFERENCES shop_membership.member(Member_ID);

ALTER TABLE shop_membership.purchase
ADD CONSTRAINT branch_id_fk
FOREIGN KEY (branch_id)
REFERENCES shop_membership.branch(Branch_ID);

ALTER TABLE driving_school.Staff
ADD CONSTRAINT staff_address_id_fk
FOREIGN KEY (staff_address_id)
REFERENCES driving_school.Addresses(address_id);

ALTER TABLE driving_school.Customers
ADD CONSTRAINT customer_address_id_fk
FOREIGN KEY (customer_address_id)
REFERENCES driving_school.Addresses(address_id);

ALTER TABLE driving_school.Customer_Payments
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES driving_school.Customers(customer_id);

ALTER TABLE driving_school.Lessons
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES driving_school.Customers(customer_id);

ALTER TABLE driving_school.Lessons
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
REFERENCES driving_school.Staff(staff_id);

ALTER TABLE driving_school.Lessons
ADD CONSTRAINT vehicle_id_fk
FOREIGN KEY (vehicle_id)
REFERENCES driving_school.Vehicles(vehicle_id);

ALTER TABLE concert_singer.concert
ADD CONSTRAINT stadium_id_fk
FOREIGN KEY (stadium_id)
REFERENCES concert_singer.stadium(Stadium_ID);

ALTER TABLE concert_singer.singer_in_concert
ADD CONSTRAINT concert_id_fk
FOREIGN KEY (concert_id)
REFERENCES concert_singer.concert(concert_ID);

ALTER TABLE concert_singer.singer_in_concert
ADD CONSTRAINT singer_id_fk
FOREIGN KEY (singer_id)
REFERENCES concert_singer.singer(Singer_ID);

ALTER TABLE music_2.Instruments
ADD CONSTRAINT songid_fk
FOREIGN KEY (songid)
REFERENCES music_2.Songs(SongId);

ALTER TABLE music_2.Instruments
ADD CONSTRAINT bandmateid_fk
FOREIGN KEY (bandmateid)
REFERENCES music_2.Band(Id);

ALTER TABLE music_2.Performance
ADD CONSTRAINT songid_fk
FOREIGN KEY (songid)
REFERENCES music_2.Songs(SongId);

ALTER TABLE music_2.Performance
ADD CONSTRAINT bandmate_fk
FOREIGN KEY (bandmate)
REFERENCES music_2.Band(Id);

ALTER TABLE music_2.Tracklists
ADD CONSTRAINT albumid_fk
FOREIGN KEY (albumid)
REFERENCES music_2.Albums(AId);

ALTER TABLE music_2.Tracklists
ADD CONSTRAINT songid_fk
FOREIGN KEY (songid)
REFERENCES music_2.Songs(SongId);

ALTER TABLE music_2.Vocals
ADD CONSTRAINT songid_fk
FOREIGN KEY (songid)
REFERENCES music_2.Songs(SongId);

ALTER TABLE music_2.Vocals
ADD CONSTRAINT bandmate_fk
FOREIGN KEY (bandmate)
REFERENCES music_2.Band(Id);

ALTER TABLE sports_competition.club_rank
ADD CONSTRAINT club_id_fk
FOREIGN KEY (club_id)
REFERENCES sports_competition.club(Club_ID);

ALTER TABLE sports_competition.player
ADD CONSTRAINT club_id_fk
FOREIGN KEY (club_id)
REFERENCES sports_competition.club(Club_ID);

ALTER TABLE sports_competition.competition_result
ADD CONSTRAINT competition_id_fk
FOREIGN KEY (competition_id)
REFERENCES sports_competition.competition(Competition_ID);

ALTER TABLE sports_competition.competition_result
ADD CONSTRAINT club_id_1_fk
FOREIGN KEY (club_id_1)
REFERENCES sports_competition.club(Club_ID);

ALTER TABLE sports_competition.competition_result
ADD CONSTRAINT club_id_2_fk
FOREIGN KEY (club_id_2)
REFERENCES sports_competition.club(Club_ID);

ALTER TABLE railway.train
ADD CONSTRAINT railway_id_fk
FOREIGN KEY (railway_id)
REFERENCES railway.railway(Railway_ID);

ALTER TABLE railway.railway_manage
ADD CONSTRAINT railway_id_fk
FOREIGN KEY (railway_id)
REFERENCES railway.railway(Railway_ID);

ALTER TABLE railway.railway_manage
ADD CONSTRAINT manager_id_fk
FOREIGN KEY (manager_id)
REFERENCES railway.manager(Manager_ID);

ALTER TABLE inn_1.Reservations
ADD CONSTRAINT room_fk
FOREIGN KEY (room)
REFERENCES inn_1.Rooms(RoomId);

ALTER TABLE museum_visit.visit
ADD CONSTRAINT museum_id_fk
FOREIGN KEY (museum_id)
REFERENCES museum_visit.museum(Museum_ID);

ALTER TABLE museum_visit.visit
ADD CONSTRAINT visitor_id_fk
FOREIGN KEY (visitor_id)
REFERENCES museum_visit.visitor(ID);

ALTER TABLE browser_web.accelerator_compatible_browser
ADD CONSTRAINT accelerator_id_fk
FOREIGN KEY (accelerator_id)
REFERENCES browser_web.Web_client_accelerator(id);

ALTER TABLE browser_web.accelerator_compatible_browser
ADD CONSTRAINT browser_id_fk
FOREIGN KEY (browser_id)
REFERENCES browser_web.browser(id);

ALTER TABLE baseball_1.all_star
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.appearances
ADD CONSTRAINT team_id_fk
FOREIGN KEY (team_id)
REFERENCES baseball_1.team(team_id);

ALTER TABLE baseball_1.appearances
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.manager_award
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.player_award
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.player_award_vote
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.batting
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.batting_postseason
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.batting_postseason
ADD CONSTRAINT team_id_fk
FOREIGN KEY (team_id)
REFERENCES baseball_1.team(team_id);

ALTER TABLE baseball_1.player_college
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.player_college
ADD CONSTRAINT college_id_fk
FOREIGN KEY (college_id)
REFERENCES baseball_1.college(college_id);

ALTER TABLE baseball_1.fielding
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.fielding_outfield
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.fielding_postseason
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.hall_of_fame
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES baseball_1.player(player_id);

ALTER TABLE baseball_1.home_game
ADD CONSTRAINT team_id_fk
FOREIGN KEY (team_id)
REFERENCES baseball_1.team(team_id);

ALTER TABLE baseball_1.home_game
ADD CONSTRAINT park_id_fk
FOREIGN KEY (park_id)
REFERENCES baseball_1.park(park_id);

ALTER TABLE baseball_1.manager
ADD CONSTRAINT team_id_fk
FOREIGN KEY (team_id)
REFERENCES baseball_1.team(team_id);

ALTER TABLE baseball_1.manager_half
ADD CONSTRAINT team_id_fk
FOREIGN KEY (team_id)
REFERENCES baseball_1.team(team_id);

ALTER TABLE architecture.bridge
ADD CONSTRAINT architect_id_fk
FOREIGN KEY (architect_id)
REFERENCES architecture.architect(id);

ALTER TABLE architecture.mill
ADD CONSTRAINT architect_id_fk
FOREIGN KEY (architect_id)
REFERENCES architecture.architect(id);

ALTER TABLE csu_1.csu_fees
ADD CONSTRAINT campus_fk
FOREIGN KEY (campus)
REFERENCES csu_1.Campuses(Id);

ALTER TABLE csu_1.degrees
ADD CONSTRAINT campus_fk
FOREIGN KEY (campus)
REFERENCES csu_1.Campuses(Id);

ALTER TABLE csu_1.discipline_enrollments
ADD CONSTRAINT campus_fk
FOREIGN KEY (campus)
REFERENCES csu_1.Campuses(Id);

ALTER TABLE csu_1.enrollments
ADD CONSTRAINT campus_fk
FOREIGN KEY (campus)
REFERENCES csu_1.Campuses(Id);

ALTER TABLE csu_1.faculty
ADD CONSTRAINT campus_fk
FOREIGN KEY (campus)
REFERENCES csu_1.Campuses(Id);

ALTER TABLE tracking_orders.Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES tracking_orders.Customers(customer_id);

ALTER TABLE tracking_orders.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES tracking_orders.Products(product_id);

ALTER TABLE tracking_orders.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES tracking_orders.Orders(order_id);

ALTER TABLE tracking_orders.Shipments
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES tracking_orders.Orders(order_id);

ALTER TABLE tracking_orders.Shipments
ADD CONSTRAINT invoice_number_fk
FOREIGN KEY (invoice_number)
REFERENCES tracking_orders.Invoices(invoice_number);

ALTER TABLE tracking_orders.Shipment_Items
ADD CONSTRAINT shipment_id_fk
FOREIGN KEY (shipment_id)
REFERENCES tracking_orders.Shipments(shipment_id);

ALTER TABLE tracking_orders.Shipment_Items
ADD CONSTRAINT order_item_id_fk
FOREIGN KEY (order_item_id)
REFERENCES tracking_orders.Order_Items(order_item_id);

ALTER TABLE insurance_policies.Customer_Policies
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES insurance_policies.Customers(Customer_ID);

ALTER TABLE insurance_policies.Claims
ADD CONSTRAINT policy_id_fk
FOREIGN KEY (policy_id)
REFERENCES insurance_policies.Customer_Policies(Policy_ID);

ALTER TABLE insurance_policies.Settlements
ADD CONSTRAINT claim_id_fk
FOREIGN KEY (claim_id)
REFERENCES insurance_policies.Claims(Claim_ID);

ALTER TABLE insurance_policies.Payments
ADD CONSTRAINT settlement_id_fk
FOREIGN KEY (settlement_id)
REFERENCES insurance_policies.Settlements(Settlement_ID);

ALTER TABLE gas_company.station_company
ADD CONSTRAINT station_id_fk
FOREIGN KEY (station_id)
REFERENCES gas_company.gas_station(Station_ID);

ALTER TABLE gas_company.station_company
ADD CONSTRAINT company_id_fk
FOREIGN KEY (company_id)
REFERENCES gas_company.company(Company_ID);

ALTER TABLE e_government.Forms
ADD CONSTRAINT service_id_fk
FOREIGN KEY (service_id)
REFERENCES e_government.Services(service_id);

ALTER TABLE e_government.Organization_Contact_Individuals
ADD CONSTRAINT individual_id_fk
FOREIGN KEY (individual_id)
REFERENCES e_government.Individuals(individual_id);

ALTER TABLE e_government.Organization_Contact_Individuals
ADD CONSTRAINT organization_id_fk
FOREIGN KEY (organization_id)
REFERENCES e_government.Organizations(organization_id);

ALTER TABLE e_government.Party_Addresses
ADD CONSTRAINT party_id_fk
FOREIGN KEY (party_id)
REFERENCES e_government.Parties(party_id);

ALTER TABLE e_government.Party_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES e_government.Addresses(address_id);

ALTER TABLE e_government.Party_Forms
ADD CONSTRAINT party_id_fk
FOREIGN KEY (party_id)
REFERENCES e_government.Parties(party_id);

ALTER TABLE e_government.Party_Forms
ADD CONSTRAINT form_id_fk
FOREIGN KEY (form_id)
REFERENCES e_government.Forms(form_id);

ALTER TABLE e_government.Party_Services
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES e_government.Parties(party_id);

ALTER TABLE e_government.Party_Services
ADD CONSTRAINT service_id_fk
FOREIGN KEY (service_id)
REFERENCES e_government.Services(service_id);

ALTER TABLE school_bus.school_bus
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES school_bus.school(School_ID);

ALTER TABLE school_bus.school_bus
ADD CONSTRAINT driver_id_fk
FOREIGN KEY (driver_id)
REFERENCES school_bus.driver(Driver_ID);

ALTER TABLE machine_repair.repair_assignment
ADD CONSTRAINT technician_id_fk
FOREIGN KEY (technician_id)
REFERENCES machine_repair.technician(technician_id);

ALTER TABLE machine_repair.repair_assignment
ADD CONSTRAINT repair_id_fk
FOREIGN KEY (repair_id)
REFERENCES machine_repair.repair(repair_ID);

ALTER TABLE machine_repair.repair_assignment
ADD CONSTRAINT machine_id_fk
FOREIGN KEY (machine_id)
REFERENCES machine_repair.machine(Machine_ID);

ALTER TABLE theme_gallery.exhibition
ADD CONSTRAINT artist_id_fk
FOREIGN KEY (artist_id)
REFERENCES theme_gallery.artist(Artist_ID);

ALTER TABLE theme_gallery.exhibition_record
ADD CONSTRAINT exhibition_id_fk
FOREIGN KEY (exhibition_id)
REFERENCES theme_gallery.exhibition(Exhibition_ID);

ALTER TABLE film_rank.film_market_estimation
ADD CONSTRAINT film_id_fk
FOREIGN KEY (film_id)
REFERENCES film_rank.film(Film_ID);

ALTER TABLE film_rank.film_market_estimation
ADD CONSTRAINT market_id_fk
FOREIGN KEY (market_id)
REFERENCES film_rank.market(Market_ID);

ALTER TABLE party_people.party
ADD CONSTRAINT region_id_fk
FOREIGN KEY (region_id)
REFERENCES party_people.region(Region_ID);

ALTER TABLE party_people.member
ADD CONSTRAINT party_id_fk
FOREIGN KEY (party_id)
REFERENCES party_people.party(Party_ID);

ALTER TABLE party_people.party_events
ADD CONSTRAINT party_id_fk
FOREIGN KEY (party_id)
REFERENCES party_people.party(Party_ID);

ALTER TABLE party_people.party_events
ADD CONSTRAINT member_in_charge_id_fk
FOREIGN KEY (member_in_charge_id)
REFERENCES party_people.member(Member_ID);

ALTER TABLE hospital_1.Department
ADD CONSTRAINT head_fk
FOREIGN KEY (head)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Affiliated_With
ADD CONSTRAINT physician_fk
FOREIGN KEY (physician)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Affiliated_With
ADD CONSTRAINT department_fk
FOREIGN KEY (department)
REFERENCES hospital_1.Department(DepartmentID);

ALTER TABLE hospital_1.Trained_In
ADD CONSTRAINT physician_fk
FOREIGN KEY (physician)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Trained_In
ADD CONSTRAINT treatment_fk
FOREIGN KEY (treatment)
REFERENCES hospital_1.Procedures(Code);

ALTER TABLE hospital_1.Patient
ADD CONSTRAINT pcp_fk
FOREIGN KEY (pcp)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Appointment
ADD CONSTRAINT patient_fk
FOREIGN KEY (patient)
REFERENCES hospital_1.Patient(SSN);

ALTER TABLE hospital_1.Appointment
ADD CONSTRAINT prepnurse_fk
FOREIGN KEY (prepnurse)
REFERENCES hospital_1.Nurse(EmployeeID);

ALTER TABLE hospital_1.Appointment
ADD CONSTRAINT physician_fk
FOREIGN KEY (physician)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Prescribes
ADD CONSTRAINT physician_fk
FOREIGN KEY (physician)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Prescribes
ADD CONSTRAINT patient_fk
FOREIGN KEY (patient)
REFERENCES hospital_1.Patient(SSN);

ALTER TABLE hospital_1.Prescribes
ADD CONSTRAINT medication_fk
FOREIGN KEY (medication)
REFERENCES hospital_1.Medication(Code);

ALTER TABLE hospital_1.Prescribes
ADD CONSTRAINT appointment_fk
FOREIGN KEY (appointment)
REFERENCES hospital_1.Appointment(AppointmentID);

ALTER TABLE hospital_1.Room
ADD CONSTRAINT blockfloor_fk
FOREIGN KEY (blockfloor)
REFERENCES hospital_1.Block(BlockFloor);

ALTER TABLE hospital_1.Room
ADD CONSTRAINT blockcode_fk
FOREIGN KEY (blockcode)
REFERENCES hospital_1.Block(BlockCode);

ALTER TABLE hospital_1.On_Call
ADD CONSTRAINT nurse_fk
FOREIGN KEY (nurse)
REFERENCES hospital_1.Nurse(EmployeeID);

ALTER TABLE hospital_1.On_Call
ADD CONSTRAINT blockfloor_fk
FOREIGN KEY (blockfloor)
REFERENCES hospital_1.Block(BlockFloor);

ALTER TABLE hospital_1.On_Call
ADD CONSTRAINT blockcode_fk
FOREIGN KEY (blockcode)
REFERENCES hospital_1.Block(BlockCode);

ALTER TABLE hospital_1.Stay
ADD CONSTRAINT patient_fk
FOREIGN KEY (patient)
REFERENCES hospital_1.Patient(SSN);

ALTER TABLE hospital_1.Stay
ADD CONSTRAINT room_fk
FOREIGN KEY (room)
REFERENCES hospital_1.Room(RoomNumber);

ALTER TABLE hospital_1.Undergoes
ADD CONSTRAINT patient_fk
FOREIGN KEY (patient)
REFERENCES hospital_1.Patient(SSN);

ALTER TABLE hospital_1.Undergoes
ADD CONSTRAINT procedures_fk
FOREIGN KEY (procedures)
REFERENCES hospital_1.Procedures(Code);

ALTER TABLE hospital_1.Undergoes
ADD CONSTRAINT stay_fk
FOREIGN KEY (stay)
REFERENCES hospital_1.Stay(StayID);

ALTER TABLE hospital_1.Undergoes
ADD CONSTRAINT physician_fk
FOREIGN KEY (physician)
REFERENCES hospital_1.Physician(EmployeeID);

ALTER TABLE hospital_1.Undergoes
ADD CONSTRAINT assistingnurse_fk
FOREIGN KEY (assistingnurse)
REFERENCES hospital_1.Nurse(EmployeeID);

ALTER TABLE customers_campaigns_ecommerce.Customer_Addresses
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_campaigns_ecommerce.Customers(customer_id);

ALTER TABLE customers_campaigns_ecommerce.Customer_Addresses
ADD CONSTRAINT premise_id_fk
FOREIGN KEY (premise_id)
REFERENCES customers_campaigns_ecommerce.Premises(premise_id);

ALTER TABLE customers_campaigns_ecommerce.Customer_Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_campaigns_ecommerce.Customers(customer_id);

ALTER TABLE customers_campaigns_ecommerce.Mailshot_Customers
ADD CONSTRAINT mailshot_id_fk
FOREIGN KEY (mailshot_id)
REFERENCES customers_campaigns_ecommerce.Mailshot_Campaigns(mailshot_id);

ALTER TABLE customers_campaigns_ecommerce.Mailshot_Customers
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_campaigns_ecommerce.Customers(customer_id);

ALTER TABLE customers_campaigns_ecommerce.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES customers_campaigns_ecommerce.Customer_Orders(order_id);

ALTER TABLE customers_campaigns_ecommerce.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customers_campaigns_ecommerce.Products(product_id);

ALTER TABLE gymnast.gymnast
ADD CONSTRAINT gymnast_id_fk
FOREIGN KEY (gymnast_id)
REFERENCES gymnast.people(People_ID);

ALTER TABLE restaurants.RESTAURANT
ADD CONSTRAINT city_name_fk
FOREIGN KEY (city_name)
REFERENCES restaurants.GEOGRAPHIC(CITY_NAME);

ALTER TABLE restaurants.LOCATION
ADD CONSTRAINT city_name_fk
FOREIGN KEY (city_name)
REFERENCES restaurants.GEOGRAPHIC(CITY_NAME);

ALTER TABLE mountain_photos.photos
ADD CONSTRAINT camera_lens_id_fk
FOREIGN KEY (camera_lens_id)
REFERENCES mountain_photos.camera_lens(id);

ALTER TABLE mountain_photos.photos
ADD CONSTRAINT mountain_id_fk
FOREIGN KEY (mountain_id)
REFERENCES mountain_photos.mountain(id);

ALTER TABLE battle_death.ship
ADD CONSTRAINT lost_in_battle_fk
FOREIGN KEY (lost_in_battle)
REFERENCES battle_death.battle(id);

ALTER TABLE battle_death.death
ADD CONSTRAINT caused_by_ship_id_fk
FOREIGN KEY (caused_by_ship_id)
REFERENCES battle_death.ship(id);

ALTER TABLE cre_Doc_Control_Systems.Documents
ADD CONSTRAINT document_status_code_fk
FOREIGN KEY (document_status_code)
REFERENCES cre_Doc_Control_Systems.Ref_Document_Status(document_status_code);

ALTER TABLE cre_Doc_Control_Systems.Documents
ADD CONSTRAINT document_type_code_fk
FOREIGN KEY (document_type_code)
REFERENCES cre_Doc_Control_Systems.Ref_Document_Types(document_type_code);

ALTER TABLE cre_Doc_Control_Systems.Documents
ADD CONSTRAINT shipping_agent_code_fk
FOREIGN KEY (shipping_agent_code)
REFERENCES cre_Doc_Control_Systems.Ref_Shipping_Agents(shipping_agent_code);

ALTER TABLE cre_Doc_Control_Systems.Employees
ADD CONSTRAINT role_code_fk
FOREIGN KEY (role_code)
REFERENCES cre_Doc_Control_Systems.Roles(role_code);

ALTER TABLE cre_Doc_Control_Systems.Document_Drafts
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Control_Systems.Documents(document_id);

ALTER TABLE cre_Doc_Control_Systems.Draft_Copies
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Control_Systems.Document_Drafts(document_id);

ALTER TABLE cre_Doc_Control_Systems.Draft_Copies
ADD CONSTRAINT draft_number_fk
FOREIGN KEY (draft_number)
REFERENCES cre_Doc_Control_Systems.Document_Drafts(draft_number);

ALTER TABLE cre_Doc_Control_Systems.Circulation_History
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Control_Systems.Draft_Copies(document_id);

ALTER TABLE cre_Doc_Control_Systems.Circulation_History
ADD CONSTRAINT draft_number_fk
FOREIGN KEY (draft_number)
REFERENCES cre_Doc_Control_Systems.Draft_Copies(draft_number);

ALTER TABLE cre_Doc_Control_Systems.Circulation_History
ADD CONSTRAINT copy_number_fk
FOREIGN KEY (copy_number)
REFERENCES cre_Doc_Control_Systems.Draft_Copies(copy_number);

ALTER TABLE cre_Doc_Control_Systems.Circulation_History
ADD CONSTRAINT employee_id_fk
FOREIGN KEY (employee_id)
REFERENCES cre_Doc_Control_Systems.Employees(employee_id);

ALTER TABLE cre_Doc_Control_Systems.Documents_Mailed
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Control_Systems.Documents(document_id);

ALTER TABLE cre_Doc_Control_Systems.Documents_Mailed
ADD CONSTRAINT mailed_to_address_id_fk
FOREIGN KEY (mailed_to_address_id)
REFERENCES cre_Doc_Control_Systems.Addresses(address_id);

ALTER TABLE tracking_share_transactions.Lots
ADD CONSTRAINT investor_id_fk
FOREIGN KEY (investor_id)
REFERENCES tracking_share_transactions.Investors(investor_id);

ALTER TABLE tracking_share_transactions.Transactions
ADD CONSTRAINT investor_id_fk
FOREIGN KEY (investor_id)
REFERENCES tracking_share_transactions.Investors(investor_id);

ALTER TABLE tracking_share_transactions.Transactions
ADD CONSTRAINT transaction_type_code_fk
FOREIGN KEY (transaction_type_code)
REFERENCES tracking_share_transactions.Ref_Transaction_Types(transaction_type_code);

ALTER TABLE tracking_share_transactions.Sales
ADD CONSTRAINT sales_transaction_id_fk
FOREIGN KEY (sales_transaction_id)
REFERENCES tracking_share_transactions.Transactions(transaction_id);

ALTER TABLE tracking_share_transactions.Purchases
ADD CONSTRAINT purchase_transaction_id_fk
FOREIGN KEY (purchase_transaction_id)
REFERENCES tracking_share_transactions.Transactions(transaction_id);

ALTER TABLE tracking_share_transactions.Transactions_Lots
ADD CONSTRAINT transaction_id_fk
FOREIGN KEY (transaction_id)
REFERENCES tracking_share_transactions.Transactions(transaction_id);

ALTER TABLE tracking_share_transactions.Transactions_Lots
ADD CONSTRAINT lot_id_fk
FOREIGN KEY (lot_id)
REFERENCES tracking_share_transactions.Lots(lot_id);

ALTER TABLE apartment_rentals.Apartments
ADD CONSTRAINT building_id_fk
FOREIGN KEY (building_id)
REFERENCES apartment_rentals.Apartment_Buildings(building_id);

ALTER TABLE apartment_rentals.Apartment_Facilities
ADD CONSTRAINT apt_id_fk
FOREIGN KEY (apt_id)
REFERENCES apartment_rentals.Apartments(apt_id);

ALTER TABLE apartment_rentals.Apartment_Bookings
ADD CONSTRAINT apt_id_fk
FOREIGN KEY (apt_id)
REFERENCES apartment_rentals.Apartments(apt_id);

ALTER TABLE apartment_rentals.Apartment_Bookings
ADD CONSTRAINT guest_id_fk
FOREIGN KEY (guest_id)
REFERENCES apartment_rentals.Guests(guest_id);

ALTER TABLE apartment_rentals.View_Unit_Status
ADD CONSTRAINT apt_id_fk
FOREIGN KEY (apt_id)
REFERENCES apartment_rentals.Apartments(apt_id);

ALTER TABLE apartment_rentals.View_Unit_Status
ADD CONSTRAINT apt_booking_id_fk
FOREIGN KEY (apt_booking_id)
REFERENCES apartment_rentals.Apartment_Bookings(apt_booking_id);

ALTER TABLE student_transcripts_tracking.Degree_Programs
ADD CONSTRAINT department_id_fk
FOREIGN KEY (department_id)
REFERENCES student_transcripts_tracking.Departments(department_id);

ALTER TABLE student_transcripts_tracking.Sections
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES student_transcripts_tracking.Courses(course_id);

ALTER TABLE student_transcripts_tracking.Students
ADD CONSTRAINT current_address_id_fk
FOREIGN KEY (current_address_id)
REFERENCES student_transcripts_tracking.Addresses(address_id);

ALTER TABLE student_transcripts_tracking.Students
ADD CONSTRAINT permanent_address_id_fk
FOREIGN KEY (permanent_address_id)
REFERENCES student_transcripts_tracking.Addresses(address_id);

ALTER TABLE student_transcripts_tracking.Student_Enrolment
ADD CONSTRAINT degree_program_id_fk
FOREIGN KEY (degree_program_id)
REFERENCES student_transcripts_tracking.Degree_Programs(degree_program_id);

ALTER TABLE student_transcripts_tracking.Student_Enrolment
ADD CONSTRAINT semester_id_fk
FOREIGN KEY (semester_id)
REFERENCES student_transcripts_tracking.Semesters(semester_id);

ALTER TABLE student_transcripts_tracking.Student_Enrolment
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES student_transcripts_tracking.Students(student_id);

ALTER TABLE student_transcripts_tracking.Student_Enrolment_Courses
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES student_transcripts_tracking.Courses(course_id);

ALTER TABLE student_transcripts_tracking.Student_Enrolment_Courses
ADD CONSTRAINT student_enrolment_id_fk
FOREIGN KEY (student_enrolment_id)
REFERENCES student_transcripts_tracking.Student_Enrolment(student_enrolment_id);

ALTER TABLE student_transcripts_tracking.Transcript_Contents
ADD CONSTRAINT student_course_id_fk
FOREIGN KEY (student_course_id)
REFERENCES student_transcripts_tracking.Student_Enrolment_Courses(student_course_id);

ALTER TABLE student_transcripts_tracking.Transcript_Contents
ADD CONSTRAINT transcript_id_fk
FOREIGN KEY (transcript_id)
REFERENCES student_transcripts_tracking.Transcripts(transcript_id);

ALTER TABLE cre_Docs_and_Epenses.Documents
ADD CONSTRAINT document_type_code_fk
FOREIGN KEY (document_type_code)
REFERENCES cre_Docs_and_Epenses.Ref_Document_Types(Document_Type_Code);

ALTER TABLE cre_Docs_and_Epenses.Documents
ADD CONSTRAINT project_id_fk
FOREIGN KEY (project_id)
REFERENCES cre_Docs_and_Epenses.Projects(Project_ID);

ALTER TABLE cre_Docs_and_Epenses.Statements
ADD CONSTRAINT statement_id_fk
FOREIGN KEY (statement_id)
REFERENCES cre_Docs_and_Epenses.Documents(Document_ID);

ALTER TABLE cre_Docs_and_Epenses.Documents_with_Expenses
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Docs_and_Epenses.Documents(Document_ID);

ALTER TABLE cre_Docs_and_Epenses.Documents_with_Expenses
ADD CONSTRAINT budget_type_code_fk
FOREIGN KEY (budget_type_code)
REFERENCES cre_Docs_and_Epenses.Ref_Budget_Codes(Budget_Type_Code);

ALTER TABLE cre_Docs_and_Epenses.Accounts
ADD CONSTRAINT statement_id_fk
FOREIGN KEY (statement_id)
REFERENCES cre_Docs_and_Epenses.Statements(Statement_ID);

ALTER TABLE ship_mission.mission
ADD CONSTRAINT ship_id_fk
FOREIGN KEY (ship_id)
REFERENCES ship_mission.ship(Ship_ID);

ALTER TABLE company_office.Office_locations
ADD CONSTRAINT building_id_fk
FOREIGN KEY (building_id)
REFERENCES company_office.buildings(id);

ALTER TABLE company_office.Office_locations
ADD CONSTRAINT company_id_fk
FOREIGN KEY (company_id)
REFERENCES company_office.Companies(id);

ALTER TABLE tracking_software_problems.Problem_Log
ADD CONSTRAINT assigned_to_staff_id_fk
FOREIGN KEY (assigned_to_staff_id)
REFERENCES tracking_software_problems.Staff(staff_id);

ALTER TABLE tracking_software_problems.Problem_Log
ADD CONSTRAINT problem_id_fk
FOREIGN KEY (problem_id)
REFERENCES tracking_software_problems.Problems(problem_id);

ALTER TABLE tracking_software_problems.Problem_Log
ADD CONSTRAINT problem_category_code_fk
FOREIGN KEY (problem_category_code)
REFERENCES tracking_software_problems.Problem_Category_Codes(problem_category_code);

ALTER TABLE tracking_software_problems.Problem_Log
ADD CONSTRAINT problem_status_code_fk
FOREIGN KEY (problem_status_code)
REFERENCES tracking_software_problems.Problem_Status_Codes(problem_status_code);

ALTER TABLE tracking_software_problems.Problems
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES tracking_software_problems.Product(product_id);

ALTER TABLE tracking_software_problems.Problems
ADD CONSTRAINT closure_authorised_by_staff_id_fk
FOREIGN KEY (closure_authorised_by_staff_id)
REFERENCES tracking_software_problems.Staff(staff_id);

ALTER TABLE tracking_software_problems.Problems
ADD CONSTRAINT reported_by_staff_id_fk
FOREIGN KEY (reported_by_staff_id)
REFERENCES tracking_software_problems.Staff(staff_id);

ALTER TABLE products_gen_characteristics.Characteristics
ADD CONSTRAINT characteristic_type_code_fk
FOREIGN KEY (characteristic_type_code)
REFERENCES products_gen_characteristics.Ref_Characteristic_Types(characteristic_type_code);

ALTER TABLE products_gen_characteristics.Products
ADD CONSTRAINT color_code_fk
FOREIGN KEY (color_code)
REFERENCES products_gen_characteristics.Ref_Colors(color_code);

ALTER TABLE products_gen_characteristics.Products
ADD CONSTRAINT product_category_code_fk
FOREIGN KEY (product_category_code)
REFERENCES products_gen_characteristics.Ref_Product_Categories(product_category_code);

ALTER TABLE products_gen_characteristics.Product_Characteristics
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES products_gen_characteristics.Products(product_id);

ALTER TABLE products_gen_characteristics.Product_Characteristics
ADD CONSTRAINT characteristic_id_fk
FOREIGN KEY (characteristic_id)
REFERENCES products_gen_characteristics.Characteristics(characteristic_id);

ALTER TABLE coffee_shop.happy_hour
ADD CONSTRAINT shop_id_fk
FOREIGN KEY (shop_id)
REFERENCES coffee_shop.shop(Shop_ID);

ALTER TABLE coffee_shop.happy_hour_member
ADD CONSTRAINT member_id_fk
FOREIGN KEY (member_id)
REFERENCES coffee_shop.member(Member_ID);

ALTER TABLE riding_club.coach
ADD CONSTRAINT club_id_fk
FOREIGN KEY (club_id)
REFERENCES riding_club.club(Club_ID);

ALTER TABLE riding_club.player_coach
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES riding_club.player(Player_ID);

ALTER TABLE riding_club.player_coach
ADD CONSTRAINT coach_id_fk
FOREIGN KEY (coach_id)
REFERENCES riding_club.coach(Coach_ID);

ALTER TABLE riding_club.match_result
ADD CONSTRAINT club_id_fk
FOREIGN KEY (club_id)
REFERENCES riding_club.club(Club_ID);

ALTER TABLE customers_card_transactions.Financial_Transactions
ADD CONSTRAINT account_id_fk
FOREIGN KEY (account_id)
REFERENCES customers_card_transactions.Accounts(account_id);

ALTER TABLE customers_card_transactions.Financial_Transactions
ADD CONSTRAINT card_id_fk
FOREIGN KEY (card_id)
REFERENCES customers_card_transactions.Customers_Cards(card_id);

ALTER TABLE county_public_safety.city
ADD CONSTRAINT county_id_fk
FOREIGN KEY (county_id)
REFERENCES county_public_safety.county_public_safety(County_ID);

ALTER TABLE performance_attendance.member_attendance
ADD CONSTRAINT member_id_fk
FOREIGN KEY (member_id)
REFERENCES performance_attendance.member(Member_ID);

ALTER TABLE performance_attendance.member_attendance
ADD CONSTRAINT performance_id_fk
FOREIGN KEY (performance_id)
REFERENCES performance_attendance.performance(Performance_ID);

ALTER TABLE club_1.Member_of_club
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES club_1.Student(StuID);

ALTER TABLE club_1.Member_of_club
ADD CONSTRAINT clubid_fk
FOREIGN KEY (clubid)
REFERENCES club_1.Club(ClubID);

ALTER TABLE singer.song
ADD CONSTRAINT singer_id_fk
FOREIGN KEY (singer_id)
REFERENCES singer.singer(Singer_ID);

ALTER TABLE culture_company.culture_company
ADD CONSTRAINT book_club_id_fk
FOREIGN KEY (book_club_id)
REFERENCES culture_company.book_club(book_club_id);

ALTER TABLE culture_company.culture_company
ADD CONSTRAINT movie_id_fk
FOREIGN KEY (movie_id)
REFERENCES culture_company.movie(movie_id);

ALTER TABLE cre_Doc_Template_Mgt.Templates
ADD CONSTRAINT template_type_code_fk
FOREIGN KEY (template_type_code)
REFERENCES cre_Doc_Template_Mgt.Ref_Template_Types(Template_Type_Code);

ALTER TABLE cre_Doc_Template_Mgt.Documents
ADD CONSTRAINT template_id_fk
FOREIGN KEY (template_id)
REFERENCES cre_Doc_Template_Mgt.Templates(Template_ID);

ALTER TABLE cre_Doc_Template_Mgt.Paragraphs
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Template_Mgt.Documents(Document_ID);

ALTER TABLE musical.actor
ADD CONSTRAINT musical_id_fk
FOREIGN KEY (musical_id)
REFERENCES musical.actor(Actor_ID);

ALTER TABLE world_1.city
ADD CONSTRAINT countrycode_fk
FOREIGN KEY (countrycode)
REFERENCES world_1.country(Code);

ALTER TABLE world_1.countrylanguage
ADD CONSTRAINT countrycode_fk
FOREIGN KEY (countrycode)
REFERENCES world_1.country(Code);

ALTER TABLE device.stock
ADD CONSTRAINT shop_id_fk
FOREIGN KEY (shop_id)
REFERENCES device.shop(Shop_ID);

ALTER TABLE device.stock
ADD CONSTRAINT device_id_fk
FOREIGN KEY (device_id)
REFERENCES device.device(Device_ID);

ALTER TABLE tracking_grants_for_research.Documents
ADD CONSTRAINT document_type_code_fk
FOREIGN KEY (document_type_code)
REFERENCES tracking_grants_for_research.Document_Types(document_type_code);

ALTER TABLE tracking_grants_for_research.Documents
ADD CONSTRAINT grant_id_fk
FOREIGN KEY (grant_id)
REFERENCES tracking_grants_for_research.Grants(grant_id);

ALTER TABLE tracking_grants_for_research.Grants
ADD CONSTRAINT organisation_id_fk
FOREIGN KEY (organisation_id)
REFERENCES tracking_grants_for_research.Organisations(organisation_id);

ALTER TABLE tracking_grants_for_research.Organisations
ADD CONSTRAINT organisation_type_fk
FOREIGN KEY (organisation_type)
REFERENCES tracking_grants_for_research.Organisation_Types(organisation_type);

ALTER TABLE tracking_grants_for_research.Project_Outcomes
ADD CONSTRAINT project_id_fk
FOREIGN KEY (project_id)
REFERENCES tracking_grants_for_research.Projects(project_id);

ALTER TABLE tracking_grants_for_research.Project_Outcomes
ADD CONSTRAINT outcome_code_fk
FOREIGN KEY (outcome_code)
REFERENCES tracking_grants_for_research.Research_Outcomes(outcome_code);

ALTER TABLE tracking_grants_for_research.Project_Staff
ADD CONSTRAINT project_id_fk
FOREIGN KEY (project_id)
REFERENCES tracking_grants_for_research.Projects(project_id);

ALTER TABLE tracking_grants_for_research.Project_Staff
ADD CONSTRAINT role_code_fk
FOREIGN KEY (role_code)
REFERENCES tracking_grants_for_research.Staff_Roles(role_code);

ALTER TABLE tracking_grants_for_research.Projects
ADD CONSTRAINT organisation_id_fk
FOREIGN KEY (organisation_id)
REFERENCES tracking_grants_for_research.Organisations(organisation_id);

ALTER TABLE tracking_grants_for_research.Research_Staff
ADD CONSTRAINT employer_organisation_id_fk
FOREIGN KEY (employer_organisation_id)
REFERENCES tracking_grants_for_research.Organisations(organisation_id);

ALTER TABLE tracking_grants_for_research.Tasks
ADD CONSTRAINT project_id_fk
FOREIGN KEY (project_id)
REFERENCES tracking_grants_for_research.Projects(project_id);

ALTER TABLE employee_hire_evaluation.hiring
ADD CONSTRAINT shop_id_fk
FOREIGN KEY (shop_id)
REFERENCES employee_hire_evaluation.shop(Shop_ID);

ALTER TABLE employee_hire_evaluation.hiring
ADD CONSTRAINT employee_id_fk
FOREIGN KEY (employee_id)
REFERENCES employee_hire_evaluation.employee(Employee_ID);

ALTER TABLE employee_hire_evaluation.evaluation
ADD CONSTRAINT employee_id_fk
FOREIGN KEY (employee_id)
REFERENCES employee_hire_evaluation.employee(Employee_ID);

ALTER TABLE movie_1.Rating
ADD CONSTRAINT rid_fk
FOREIGN KEY (rid)
REFERENCES movie_1.Reviewer(rID);

ALTER TABLE movie_1.Rating
ADD CONSTRAINT mid_fk
FOREIGN KEY (mid)
REFERENCES movie_1.Movie(mID);

ALTER TABLE network_1.Friend
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES network_1.Highschooler(ID);

ALTER TABLE network_1.Friend
ADD CONSTRAINT friend_id_fk
FOREIGN KEY (friend_id)
REFERENCES network_1.Highschooler(ID);

ALTER TABLE network_1.Likes
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES network_1.Highschooler(ID);

ALTER TABLE network_1.Likes
ADD CONSTRAINT liked_id_fk
FOREIGN KEY (liked_id)
REFERENCES network_1.Highschooler(ID);

ALTER TABLE poker_player.poker_player
ADD CONSTRAINT people_id_fk
FOREIGN KEY (people_id)
REFERENCES poker_player.people(People_ID);

ALTER TABLE program_share.broadcast
ADD CONSTRAINT channel_id_fk
FOREIGN KEY (channel_id)
REFERENCES program_share.channel(Channel_ID);

ALTER TABLE program_share.broadcast
ADD CONSTRAINT program_id_fk
FOREIGN KEY (program_id)
REFERENCES program_share.program(Program_ID);

ALTER TABLE program_share.broadcast_share
ADD CONSTRAINT channel_id_fk
FOREIGN KEY (channel_id)
REFERENCES program_share.channel(Channel_ID);

ALTER TABLE program_share.broadcast_share
ADD CONSTRAINT program_id_fk
FOREIGN KEY (program_id)
REFERENCES program_share.program(Program_ID);

ALTER TABLE aircraft.match
ADD CONSTRAINT winning_pilot_fk
FOREIGN KEY (winning_pilot)
REFERENCES aircraft.pilot(Pilot_Id);

ALTER TABLE aircraft.match
ADD CONSTRAINT winning_aircraft_fk
FOREIGN KEY (winning_aircraft)
REFERENCES aircraft.aircraft(Aircraft_ID);

ALTER TABLE aircraft.airport_aircraft
ADD CONSTRAINT airport_id_fk
FOREIGN KEY (airport_id)
REFERENCES aircraft.airport(Airport_ID);

ALTER TABLE aircraft.airport_aircraft
ADD CONSTRAINT aircraft_id_fk
FOREIGN KEY (aircraft_id)
REFERENCES aircraft.aircraft(Aircraft_ID);

ALTER TABLE restaurant_1.Type_Of_Restaurant
ADD CONSTRAINT resid_fk
FOREIGN KEY (resid)
REFERENCES restaurant_1.Restaurant(ResID);

ALTER TABLE restaurant_1.Type_Of_Restaurant
ADD CONSTRAINT restypeid_fk
FOREIGN KEY (restypeid)
REFERENCES restaurant_1.Restaurant_Type(ResTypeID);

ALTER TABLE restaurant_1.Visits_Restaurant
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES restaurant_1.Student(StuID);

ALTER TABLE restaurant_1.Visits_Restaurant
ADD CONSTRAINT resid_fk
FOREIGN KEY (resid)
REFERENCES restaurant_1.Restaurant(ResID);

ALTER TABLE customers_and_invoices.Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_invoices.Customers(customer_id);

ALTER TABLE customers_and_invoices.Invoices
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES customers_and_invoices.Orders(order_id);

ALTER TABLE customers_and_invoices.Accounts
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_invoices.Customers(customer_id);

ALTER TABLE customers_and_invoices.Products
ADD CONSTRAINT production_type_code_fk
FOREIGN KEY (production_type_code)
REFERENCES customers_and_invoices.Product_Categories(production_type_code);

ALTER TABLE customers_and_invoices.Financial_Transactions
ADD CONSTRAINT account_id_fk
FOREIGN KEY (account_id)
REFERENCES customers_and_invoices.Accounts(account_id);

ALTER TABLE customers_and_invoices.Financial_Transactions
ADD CONSTRAINT invoice_number_fk
FOREIGN KEY (invoice_number)
REFERENCES customers_and_invoices.Invoices(invoice_number);

ALTER TABLE customers_and_invoices.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES customers_and_invoices.Orders(order_id);

ALTER TABLE customers_and_invoices.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customers_and_invoices.Products(product_id);

ALTER TABLE customers_and_invoices.Invoice_Line_Items
ADD CONSTRAINT order_item_id_fk
FOREIGN KEY (order_item_id)
REFERENCES customers_and_invoices.Order_Items(order_item_id);

ALTER TABLE customers_and_invoices.Invoice_Line_Items
ADD CONSTRAINT invoice_number_fk
FOREIGN KEY (invoice_number)
REFERENCES customers_and_invoices.Invoices(invoice_number);

ALTER TABLE customers_and_invoices.Invoice_Line_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customers_and_invoices.Products(product_id);

ALTER TABLE insurance_and_eClaims.Policies
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES insurance_and_eClaims.Customers(Customer_ID);

ALTER TABLE insurance_and_eClaims.Claim_Headers
ADD CONSTRAINT policy_id_fk
FOREIGN KEY (policy_id)
REFERENCES insurance_and_eClaims.Policies(Policy_ID);

ALTER TABLE insurance_and_eClaims.Claims_Documents
ADD CONSTRAINT claim_id_fk
FOREIGN KEY (claim_id)
REFERENCES insurance_and_eClaims.Claim_Headers(Claim_Header_ID);

ALTER TABLE insurance_and_eClaims.Claims_Documents
ADD CONSTRAINT created_by_staff_id_fk
FOREIGN KEY (created_by_staff_id)
REFERENCES insurance_and_eClaims.Staff(Staff_ID);

ALTER TABLE insurance_and_eClaims.Claims_Processing
ADD CONSTRAINT claim_id_fk
FOREIGN KEY (claim_id)
REFERENCES insurance_and_eClaims.Claim_Headers(Claim_Header_ID);

ALTER TABLE insurance_and_eClaims.Claims_Processing
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
REFERENCES insurance_and_eClaims.Staff(Staff_ID);

ALTER TABLE college_1.CLASS
ADD CONSTRAINT crs_code_fk
FOREIGN KEY (crs_code)
REFERENCES college_1.COURSE(CRS_CODE);

ALTER TABLE college_1.CLASS
ADD CONSTRAINT prof_num_fk
FOREIGN KEY (prof_num)
REFERENCES college_1.EMPLOYEE(EMP_NUM);

ALTER TABLE college_1.COURSE
ADD CONSTRAINT dept_code_fk
FOREIGN KEY (dept_code)
REFERENCES college_1.DEPARTMENT(DEPT_CODE);

ALTER TABLE college_1.DEPARTMENT
ADD CONSTRAINT emp_num_fk
FOREIGN KEY (emp_num)
REFERENCES college_1.EMPLOYEE(EMP_NUM);

ALTER TABLE college_1.ENROLL
ADD CONSTRAINT class_code_fk
FOREIGN KEY (class_code)
REFERENCES college_1.CLASS(CLASS_CODE);

ALTER TABLE college_1.ENROLL
ADD CONSTRAINT stu_num_fk
FOREIGN KEY (stu_num)
REFERENCES college_1.STUDENT(STU_NUM);

ALTER TABLE college_1.PROFESSOR
ADD CONSTRAINT emp_num_fk
FOREIGN KEY (emp_num)
REFERENCES college_1.EMPLOYEE(EMP_NUM);

ALTER TABLE college_1.PROFESSOR
ADD CONSTRAINT dept_code_fk
FOREIGN KEY (dept_code)
REFERENCES college_1.DEPARTMENT(DEPT_CODE);

ALTER TABLE college_1.STUDENT
ADD CONSTRAINT dept_code_fk
FOREIGN KEY (dept_code)
REFERENCES college_1.DEPARTMENT(DEPT_CODE);

ALTER TABLE local_govt_mdm.CMI_Cross_References
ADD CONSTRAINT master_customer_id_fk
FOREIGN KEY (master_customer_id)
REFERENCES local_govt_mdm.Customer_Master_Index(master_customer_id);

ALTER TABLE local_govt_mdm.Council_Tax
ADD CONSTRAINT cmi_cross_ref_id_fk
FOREIGN KEY (cmi_cross_ref_id)
REFERENCES local_govt_mdm.CMI_Cross_References(cmi_cross_ref_id);

ALTER TABLE local_govt_mdm.Business_Rates
ADD CONSTRAINT cmi_cross_ref_id_fk
FOREIGN KEY (cmi_cross_ref_id)
REFERENCES local_govt_mdm.CMI_Cross_References(cmi_cross_ref_id);

ALTER TABLE local_govt_mdm.Benefits_Overpayments
ADD CONSTRAINT cmi_cross_ref_id_fk
FOREIGN KEY (cmi_cross_ref_id)
REFERENCES local_govt_mdm.CMI_Cross_References(cmi_cross_ref_id);

ALTER TABLE local_govt_mdm.Parking_Fines
ADD CONSTRAINT cmi_cross_ref_id_fk
FOREIGN KEY (cmi_cross_ref_id)
REFERENCES local_govt_mdm.CMI_Cross_References(cmi_cross_ref_id);

ALTER TABLE local_govt_mdm.Rent_Arrears
ADD CONSTRAINT cmi_cross_ref_id_fk
FOREIGN KEY (cmi_cross_ref_id)
REFERENCES local_govt_mdm.CMI_Cross_References(cmi_cross_ref_id);

ALTER TABLE local_govt_mdm.Electoral_Register
ADD CONSTRAINT cmi_cross_ref_id_fk
FOREIGN KEY (cmi_cross_ref_id)
REFERENCES local_govt_mdm.CMI_Cross_References(cmi_cross_ref_id);

ALTER TABLE book_2.publication
ADD CONSTRAINT book_id_fk
FOREIGN KEY (book_id)
REFERENCES book_2.book(Book_ID);

ALTER TABLE hr_1.countries
ADD CONSTRAINT region_id_fk
FOREIGN KEY (region_id)
REFERENCES hr_1.regions(REGION_ID);

ALTER TABLE hr_1.employees
ADD CONSTRAINT job_id_fk
FOREIGN KEY (job_id)
REFERENCES hr_1.jobs(JOB_ID);

ALTER TABLE hr_1.employees
ADD CONSTRAINT department_id_fk
FOREIGN KEY (department_id)
REFERENCES hr_1.departments(DEPARTMENT_ID);

ALTER TABLE hr_1.job_history
ADD CONSTRAINT employee_id_fk
FOREIGN KEY (employee_id)
REFERENCES hr_1.employees(EMPLOYEE_ID);

ALTER TABLE hr_1.job_history
ADD CONSTRAINT job_id_fk
FOREIGN KEY (job_id)
REFERENCES hr_1.jobs(JOB_ID);

ALTER TABLE hr_1.job_history
ADD CONSTRAINT department_id_fk
FOREIGN KEY (department_id)
REFERENCES hr_1.departments(DEPARTMENT_ID);

ALTER TABLE hr_1.locations
ADD CONSTRAINT country_id_fk
FOREIGN KEY (country_id)
REFERENCES hr_1.countries(COUNTRY_ID);

ALTER TABLE soccer_1.Player_Attributes
ADD CONSTRAINT player_fifa_api_id_fk
FOREIGN KEY (player_fifa_api_id)
REFERENCES soccer_1.Player(player_fifa_api_id);

ALTER TABLE soccer_1.Player_Attributes
ADD CONSTRAINT player_api_id_fk
FOREIGN KEY (player_api_id)
REFERENCES soccer_1.Player(player_api_id);

ALTER TABLE soccer_1.League
ADD CONSTRAINT country_id_fk
FOREIGN KEY (country_id)
REFERENCES soccer_1.Country(id);

ALTER TABLE soccer_1.Team_Attributes
ADD CONSTRAINT team_fifa_api_id_fk
FOREIGN KEY (team_fifa_api_id)
REFERENCES soccer_1.Team(team_fifa_api_id);

ALTER TABLE soccer_1.Team_Attributes
ADD CONSTRAINT team_api_id_fk
FOREIGN KEY (team_api_id)
REFERENCES soccer_1.Team(team_api_id);

ALTER TABLE sakila_1.address
ADD CONSTRAINT city_id_fk
FOREIGN KEY (city_id)
REFERENCES sakila_1.city(city_id);

ALTER TABLE sakila_1.city
ADD CONSTRAINT country_id_fk
FOREIGN KEY (country_id)
REFERENCES sakila_1.country(country_id);

ALTER TABLE sakila_1.customer
ADD CONSTRAINT store_id_fk
FOREIGN KEY (store_id)
REFERENCES sakila_1.store(store_id);

ALTER TABLE sakila_1.customer
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES sakila_1.address(address_id);

ALTER TABLE sakila_1.film
ADD CONSTRAINT language_id_fk
FOREIGN KEY (language_id)
REFERENCES sakila_1.language(language_id);

ALTER TABLE sakila_1.film
ADD CONSTRAINT original_language_id_fk
FOREIGN KEY (original_language_id)
REFERENCES sakila_1.language(language_id);

ALTER TABLE sakila_1.film_actor
ADD CONSTRAINT actor_id_fk
FOREIGN KEY (actor_id)
REFERENCES sakila_1.actor(actor_id);

ALTER TABLE sakila_1.film_actor
ADD CONSTRAINT film_id_fk
FOREIGN KEY (film_id)
REFERENCES sakila_1.film(film_id);

ALTER TABLE sakila_1.film_category
ADD CONSTRAINT film_id_fk
FOREIGN KEY (film_id)
REFERENCES sakila_1.film(film_id);

ALTER TABLE sakila_1.film_category
ADD CONSTRAINT category_id_fk
FOREIGN KEY (category_id)
REFERENCES sakila_1.category(category_id);

ALTER TABLE sakila_1.inventory
ADD CONSTRAINT film_id_fk
FOREIGN KEY (film_id)
REFERENCES sakila_1.film(film_id);

ALTER TABLE sakila_1.inventory
ADD CONSTRAINT store_id_fk
FOREIGN KEY (store_id)
REFERENCES sakila_1.store(store_id);

ALTER TABLE sakila_1.payment
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES sakila_1.customer(customer_id);

ALTER TABLE sakila_1.payment
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
REFERENCES sakila_1.staff(staff_id);

ALTER TABLE sakila_1.payment
ADD CONSTRAINT rental_id_fk
FOREIGN KEY (rental_id)
REFERENCES sakila_1.rental(rental_id);

ALTER TABLE sakila_1.rental
ADD CONSTRAINT inventory_id_fk
FOREIGN KEY (inventory_id)
REFERENCES sakila_1.inventory(inventory_id);

ALTER TABLE sakila_1.rental
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES sakila_1.customer(customer_id);

ALTER TABLE sakila_1.rental
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
REFERENCES sakila_1.staff(staff_id);

ALTER TABLE sakila_1.staff
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES sakila_1.address(address_id);

ALTER TABLE sakila_1.store
ADD CONSTRAINT manager_staff_id_fk
FOREIGN KEY (manager_staff_id)
REFERENCES sakila_1.staff(staff_id);

ALTER TABLE sakila_1.store
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES sakila_1.address(address_id);

ALTER TABLE real_estate_properties.Other_Available_Features
ADD CONSTRAINT feature_type_code_fk
FOREIGN KEY (feature_type_code)
REFERENCES real_estate_properties.Ref_Feature_Types(feature_type_code);

ALTER TABLE real_estate_properties.Properties
ADD CONSTRAINT property_type_code_fk
FOREIGN KEY (property_type_code)
REFERENCES real_estate_properties.Ref_Property_Types(property_type_code);

ALTER TABLE real_estate_properties.Other_Property_Features
ADD CONSTRAINT property_id_fk
FOREIGN KEY (property_id)
REFERENCES real_estate_properties.Properties(property_id);

ALTER TABLE real_estate_properties.Other_Property_Features
ADD CONSTRAINT feature_id_fk
FOREIGN KEY (feature_id)
REFERENCES real_estate_properties.Other_Available_Features(feature_id);

ALTER TABLE college_3.Member_of
ADD CONSTRAINT facid_fk
FOREIGN KEY (facid)
REFERENCES college_3.Faculty(FacID);

ALTER TABLE college_3.Member_of
ADD CONSTRAINT dno_fk
FOREIGN KEY (dno)
REFERENCES college_3.Department(DNO);

ALTER TABLE college_3.Course
ADD CONSTRAINT instructor_fk
FOREIGN KEY (instructor)
REFERENCES college_3.Faculty(FacID);

ALTER TABLE college_3.Course
ADD CONSTRAINT dno_fk
FOREIGN KEY (dno)
REFERENCES college_3.Department(DNO);

ALTER TABLE college_3.Minor_in
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES college_3.Student(StuID);

ALTER TABLE college_3.Minor_in
ADD CONSTRAINT dno_fk
FOREIGN KEY (dno)
REFERENCES college_3.Department(DNO);

ALTER TABLE college_3.Enrolled_in
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES college_3.Student(StuID);

ALTER TABLE college_3.Enrolled_in
ADD CONSTRAINT cid_fk
FOREIGN KEY (cid)
REFERENCES college_3.Course(CID);

ALTER TABLE college_3.Enrolled_in
ADD CONSTRAINT grade_fk
FOREIGN KEY (grade)
REFERENCES college_3.Gradeconversion(lettergrade);

ALTER TABLE course_teach.course_arrange
ADD CONSTRAINT course_id_fk
FOREIGN KEY (course_id)
REFERENCES course_teach.course(Course_ID);

ALTER TABLE course_teach.course_arrange
ADD CONSTRAINT teacher_id_fk
FOREIGN KEY (teacher_id)
REFERENCES course_teach.teacher(Teacher_ID);

ALTER TABLE roller_coaster.roller_coaster
ADD CONSTRAINT country_id_fk
FOREIGN KEY (country_id)
REFERENCES roller_coaster.country(Country_ID);

ALTER TABLE customer_deliveries.Regular_Orders
ADD CONSTRAINT distributer_id_fk
FOREIGN KEY (distributer_id)
REFERENCES customer_deliveries.Customers(customer_id);

ALTER TABLE customer_deliveries.Regular_Order_Products
ADD CONSTRAINT regular_order_id_fk
FOREIGN KEY (regular_order_id)
REFERENCES customer_deliveries.Regular_Orders(regular_order_id);

ALTER TABLE customer_deliveries.Regular_Order_Products
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customer_deliveries.Products(product_id);

ALTER TABLE customer_deliveries.Actual_Orders
ADD CONSTRAINT regular_order_id_fk
FOREIGN KEY (regular_order_id)
REFERENCES customer_deliveries.Regular_Orders(regular_order_id);

ALTER TABLE customer_deliveries.Actual_Order_Products
ADD CONSTRAINT actual_order_id_fk
FOREIGN KEY (actual_order_id)
REFERENCES customer_deliveries.Actual_Orders(actual_order_id);

ALTER TABLE customer_deliveries.Actual_Order_Products
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customer_deliveries.Products(product_id);

ALTER TABLE customer_deliveries.Customer_Addresses
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customer_deliveries.Customers(customer_id);

ALTER TABLE customer_deliveries.Customer_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES customer_deliveries.Addresses(address_id);

ALTER TABLE customer_deliveries.Delivery_Route_Locations
ADD CONSTRAINT route_id_fk
FOREIGN KEY (route_id)
REFERENCES customer_deliveries.Delivery_Routes(route_id);

ALTER TABLE customer_deliveries.Delivery_Route_Locations
ADD CONSTRAINT location_address_id_fk
FOREIGN KEY (location_address_id)
REFERENCES customer_deliveries.Addresses(address_id);

ALTER TABLE customer_deliveries.Employees
ADD CONSTRAINT employee_address_id_fk
FOREIGN KEY (employee_address_id)
REFERENCES customer_deliveries.Addresses(address_id);

ALTER TABLE customer_deliveries.Order_Deliveries
ADD CONSTRAINT location_code_fk
FOREIGN KEY (location_code)
REFERENCES customer_deliveries.Delivery_Route_Locations(location_code);

ALTER TABLE customer_deliveries.Order_Deliveries
ADD CONSTRAINT actual_order_id_fk
FOREIGN KEY (actual_order_id)
REFERENCES customer_deliveries.Actual_Orders(actual_order_id);

ALTER TABLE customer_deliveries.Order_Deliveries
ADD CONSTRAINT driver_employee_id_fk
FOREIGN KEY (driver_employee_id)
REFERENCES customer_deliveries.Employees(employee_id);

ALTER TABLE customer_deliveries.Order_Deliveries
ADD CONSTRAINT truck_id_fk
FOREIGN KEY (truck_id)
REFERENCES customer_deliveries.Trucks(truck_id);

ALTER TABLE game_injury.game
ADD CONSTRAINT stadium_id_fk
FOREIGN KEY (stadium_id)
REFERENCES game_injury.stadium(id);

ALTER TABLE game_injury.injury_accident
ADD CONSTRAINT game_id_fk
FOREIGN KEY (game_id)
REFERENCES game_injury.game(id);

ALTER TABLE school_finance.budget
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES school_finance.School(School_id);

ALTER TABLE school_finance.endowment
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES school_finance.School(School_id);

ALTER TABLE scholar.paper
ADD CONSTRAINT venueid_fk
FOREIGN KEY (venueid)
REFERENCES scholar.venue(venueId);

ALTER TABLE scholar.paper
ADD CONSTRAINT journalid_fk
FOREIGN KEY (journalid)
REFERENCES scholar.journal(journalId);

ALTER TABLE scholar.cite
ADD CONSTRAINT citingpaperid_fk
FOREIGN KEY (citingpaperid)
REFERENCES scholar.paper(paperId);

ALTER TABLE scholar.cite
ADD CONSTRAINT citedpaperid_fk
FOREIGN KEY (citedpaperid)
REFERENCES scholar.paper(paperId);

ALTER TABLE scholar.paperKeyphrase
ADD CONSTRAINT paperid_fk
FOREIGN KEY (paperid)
REFERENCES scholar.paper(paperId);

ALTER TABLE scholar.paperKeyphrase
ADD CONSTRAINT keyphraseid_fk
FOREIGN KEY (keyphraseid)
REFERENCES scholar.keyphrase(keyphraseId);

ALTER TABLE scholar.writes
ADD CONSTRAINT paperid_fk
FOREIGN KEY (paperid)
REFERENCES scholar.paper(paperId);

ALTER TABLE scholar.writes
ADD CONSTRAINT authorid_fk
FOREIGN KEY (authorid)
REFERENCES scholar.author(authorId);

ALTER TABLE voter_1.VOTES
ADD CONSTRAINT state_fk
FOREIGN KEY (state)
REFERENCES voter_1.AREA_CODE_STATE(state);

ALTER TABLE voter_1.VOTES
ADD CONSTRAINT contestant_number_fk
FOREIGN KEY (contestant_number)
REFERENCES voter_1.CONTESTANTS(contestant_number);

ALTER TABLE match_season.match_season
ADD CONSTRAINT country_fk
FOREIGN KEY (country)
REFERENCES match_season.country(Country_id);

ALTER TABLE match_season.match_season
ADD CONSTRAINT team_fk
FOREIGN KEY (team)
REFERENCES match_season.team(Team_id);

ALTER TABLE match_season.player
ADD CONSTRAINT team_fk
FOREIGN KEY (team)
REFERENCES match_season.team(Team_id);

ALTER TABLE small_bank_1.SAVINGS
ADD CONSTRAINT custid_fk
FOREIGN KEY (custid)
REFERENCES small_bank_1.ACCOUNTS(custid);

ALTER TABLE small_bank_1.CHECKING
ADD CONSTRAINT custid_fk
FOREIGN KEY (custid)
REFERENCES small_bank_1.ACCOUNTS(custid);

ALTER TABLE wta_1.matches
ADD CONSTRAINT loser_id_fk
FOREIGN KEY (loser_id)
REFERENCES wta_1.players(player_id);

ALTER TABLE wta_1.matches
ADD CONSTRAINT winner_id_fk
FOREIGN KEY (winner_id)
REFERENCES wta_1.players(player_id);

ALTER TABLE wta_1.rankings
ADD CONSTRAINT player_id_fk
FOREIGN KEY (player_id)
REFERENCES wta_1.players(player_id);

ALTER TABLE yelp.category
ADD CONSTRAINT business_id_fk
FOREIGN KEY (business_id)
REFERENCES yelp.business(business_id);

ALTER TABLE yelp.checkin
ADD CONSTRAINT business_id_fk
FOREIGN KEY (business_id)
REFERENCES yelp.business(business_id);

ALTER TABLE yelp.neighbourhood
ADD CONSTRAINT business_id_fk
FOREIGN KEY (business_id)
REFERENCES yelp.business(business_id);

ALTER TABLE yelp.review
ADD CONSTRAINT business_id_fk
FOREIGN KEY (business_id)
REFERENCES yelp.business(business_id);

ALTER TABLE yelp.review
ADD CONSTRAINT user_id_fk
FOREIGN KEY (user_id)
REFERENCES yelp.user(user_id);

ALTER TABLE yelp.tip
ADD CONSTRAINT business_id_fk
FOREIGN KEY (business_id)
REFERENCES yelp.business(business_id);

ALTER TABLE yelp.tip
ADD CONSTRAINT user_id_fk
FOREIGN KEY (user_id)
REFERENCES yelp.user(user_id);

ALTER TABLE manufacturer.furniture_manufacte
ADD CONSTRAINT manufacturer_id_fk
FOREIGN KEY (manufacturer_id)
REFERENCES manufacturer.manufacturer(Manufacturer_ID);

ALTER TABLE manufacturer.furniture_manufacte
ADD CONSTRAINT furniture_id_fk
FOREIGN KEY (furniture_id)
REFERENCES manufacturer.furniture(Furniture_ID);

ALTER TABLE store_1.albums
ADD CONSTRAINT artist_id_fk
FOREIGN KEY (artist_id)
REFERENCES store_1.artists(id);

ALTER TABLE store_1.employees
ADD CONSTRAINT reports_to_fk
FOREIGN KEY (reports_to)
REFERENCES store_1.employees(id);

ALTER TABLE store_1.customers
ADD CONSTRAINT support_rep_id_fk
FOREIGN KEY (support_rep_id)
REFERENCES store_1.employees(id);

ALTER TABLE store_1.invoices
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES store_1.customers(id);

ALTER TABLE store_1.tracks
ADD CONSTRAINT album_id_fk
FOREIGN KEY (album_id)
REFERENCES store_1.albums(id);

ALTER TABLE store_1.tracks
ADD CONSTRAINT media_type_id_fk
FOREIGN KEY (media_type_id)
REFERENCES store_1.media_types(id);

ALTER TABLE store_1.tracks
ADD CONSTRAINT genre_id_fk
FOREIGN KEY (genre_id)
REFERENCES store_1.genres(id);

ALTER TABLE store_1.invoice_lines
ADD CONSTRAINT invoice_id_fk
FOREIGN KEY (invoice_id)
REFERENCES store_1.invoices(id);

ALTER TABLE store_1.invoice_lines
ADD CONSTRAINT track_id_fk
FOREIGN KEY (track_id)
REFERENCES store_1.tracks(id);

ALTER TABLE store_1.playlist_tracks
ADD CONSTRAINT playlist_id_fk
FOREIGN KEY (playlist_id)
REFERENCES store_1.playlists(id);

ALTER TABLE store_1.playlist_tracks
ADD CONSTRAINT track_id_fk
FOREIGN KEY (track_id)
REFERENCES store_1.tracks(id);

ALTER TABLE train_station.train_station
ADD CONSTRAINT train_id_fk
FOREIGN KEY (train_id)
REFERENCES train_station.train(Train_ID);

ALTER TABLE train_station.train_station
ADD CONSTRAINT station_id_fk
FOREIGN KEY (station_id)
REFERENCES train_station.station(Station_ID);

ALTER TABLE document_management.Users
ADD CONSTRAINT role_code_fk
FOREIGN KEY (role_code)
REFERENCES document_management.Roles(role_code);

ALTER TABLE document_management.Documents
ADD CONSTRAINT document_structure_code_fk
FOREIGN KEY (document_structure_code)
REFERENCES document_management.Document_Structures(document_structure_code);

ALTER TABLE document_management.Document_Functional_Areas
ADD CONSTRAINT document_code_fk
FOREIGN KEY (document_code)
REFERENCES document_management.Documents(document_code);

ALTER TABLE document_management.Document_Functional_Areas
ADD CONSTRAINT functional_area_code_fk
FOREIGN KEY (functional_area_code)
REFERENCES document_management.Functional_Areas(functional_area_code);

ALTER TABLE document_management.Document_Sections
ADD CONSTRAINT document_code_fk
FOREIGN KEY (document_code)
REFERENCES document_management.Documents(document_code);

ALTER TABLE document_management.Document_Sections_Images
ADD CONSTRAINT section_id_fk
FOREIGN KEY (section_id)
REFERENCES document_management.Document_Sections(section_id);

ALTER TABLE document_management.Document_Sections_Images
ADD CONSTRAINT image_id_fk
FOREIGN KEY (image_id)
REFERENCES document_management.Images(image_id);

ALTER TABLE formula_1.races
ADD CONSTRAINT circuitid_fk
FOREIGN KEY (circuitid)
REFERENCES formula_1.circuits(circuitId);

ALTER TABLE formula_1.constructorStandings
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.constructorStandings
ADD CONSTRAINT constructorid_fk
FOREIGN KEY (constructorid)
REFERENCES formula_1.constructors(constructorId);

ALTER TABLE formula_1.results
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.results
ADD CONSTRAINT driverid_fk
FOREIGN KEY (driverid)
REFERENCES formula_1.drivers(driverId);

ALTER TABLE formula_1.results
ADD CONSTRAINT constructorid_fk
FOREIGN KEY (constructorid)
REFERENCES formula_1.constructors(constructorId);

ALTER TABLE formula_1.driverStandings
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.driverStandings
ADD CONSTRAINT driverid_fk
FOREIGN KEY (driverid)
REFERENCES formula_1.drivers(driverId);

ALTER TABLE formula_1.constructorResults
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.constructorResults
ADD CONSTRAINT constructorid_fk
FOREIGN KEY (constructorid)
REFERENCES formula_1.constructors(constructorId);

ALTER TABLE formula_1.qualifying
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.qualifying
ADD CONSTRAINT driverid_fk
FOREIGN KEY (driverid)
REFERENCES formula_1.drivers(driverId);

ALTER TABLE formula_1.qualifying
ADD CONSTRAINT constructorid_fk
FOREIGN KEY (constructorid)
REFERENCES formula_1.constructors(constructorId);

ALTER TABLE formula_1.pitStops
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.pitStops
ADD CONSTRAINT driverid_fk
FOREIGN KEY (driverid)
REFERENCES formula_1.drivers(driverId);

ALTER TABLE formula_1.lapTimes
ADD CONSTRAINT raceid_fk
FOREIGN KEY (raceid)
REFERENCES formula_1.races(raceId);

ALTER TABLE formula_1.lapTimes
ADD CONSTRAINT driverid_fk
FOREIGN KEY (driverid)
REFERENCES formula_1.drivers(driverId);

ALTER TABLE game_1.Plays_Games
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES game_1.Student(StuID);

ALTER TABLE game_1.Plays_Games
ADD CONSTRAINT gameid_fk
FOREIGN KEY (gameid)
REFERENCES game_1.Video_Games(GameID);

ALTER TABLE game_1.SportsInfo
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES game_1.Student(StuID);

ALTER TABLE loan_1.customer
ADD CONSTRAINT branch_id_fk
FOREIGN KEY (branch_id)
REFERENCES loan_1.bank(branch_ID);

ALTER TABLE loan_1.loan
ADD CONSTRAINT branch_id_fk
FOREIGN KEY (branch_id)
REFERENCES loan_1.bank(branch_ID);

ALTER TABLE bike_1.status
ADD CONSTRAINT station_id_fk
FOREIGN KEY (station_id)
REFERENCES bike_1.station(id);

ALTER TABLE entrepreneur.entrepreneur
ADD CONSTRAINT people_id_fk
FOREIGN KEY (people_id)
REFERENCES entrepreneur.people(People_ID);

ALTER TABLE orchestra.orchestra
ADD CONSTRAINT conductor_id_fk
FOREIGN KEY (conductor_id)
REFERENCES orchestra.conductor(Conductor_ID);

ALTER TABLE orchestra.performance
ADD CONSTRAINT orchestra_id_fk
FOREIGN KEY (orchestra_id)
REFERENCES orchestra.orchestra(Orchestra_ID);

ALTER TABLE orchestra.show
ADD CONSTRAINT performance_id_fk
FOREIGN KEY (performance_id)
REFERENCES orchestra.performance(Performance_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Clients
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES cre_Drama_Workshop_Groups.Addresses(Address_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Drama_Workshop_Groups
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES cre_Drama_Workshop_Groups.Addresses(Address_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Performers
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES cre_Drama_Workshop_Groups.Addresses(Address_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Customers
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES cre_Drama_Workshop_Groups.Addresses(Address_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Stores
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES cre_Drama_Workshop_Groups.Addresses(Address_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Stores
ADD CONSTRAINT marketing_region_code_fk
FOREIGN KEY (marketing_region_code)
REFERENCES cre_Drama_Workshop_Groups.Marketing_Regions(Marketing_Region_Code);

ALTER TABLE cre_Drama_Workshop_Groups.Bookings
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES cre_Drama_Workshop_Groups.Clients(Client_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Bookings
ADD CONSTRAINT workshop_group_id_fk
FOREIGN KEY (workshop_group_id)
REFERENCES cre_Drama_Workshop_Groups.Drama_Workshop_Groups(Workshop_Group_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Performers_in_Bookings
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES cre_Drama_Workshop_Groups.Bookings(Booking_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Performers_in_Bookings
ADD CONSTRAINT performer_id_fk
FOREIGN KEY (performer_id)
REFERENCES cre_Drama_Workshop_Groups.Performers(Performer_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Customer_Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES cre_Drama_Workshop_Groups.Customers(Customer_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Customer_Orders
ADD CONSTRAINT store_id_fk
FOREIGN KEY (store_id)
REFERENCES cre_Drama_Workshop_Groups.Stores(Store_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES cre_Drama_Workshop_Groups.Customer_Orders(Order_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES cre_Drama_Workshop_Groups.Products(Product_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Invoices
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES cre_Drama_Workshop_Groups.Customer_Orders(Order_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Invoices
ADD CONSTRAINT payment_method_code_fk
FOREIGN KEY (payment_method_code)
REFERENCES cre_Drama_Workshop_Groups.Ref_Payment_Methods(payment_method_code);

ALTER TABLE cre_Drama_Workshop_Groups.Services
ADD CONSTRAINT service_type_code_fk
FOREIGN KEY (service_type_code)
REFERENCES cre_Drama_Workshop_Groups.Ref_Service_Types(Service_Type_Code);

ALTER TABLE cre_Drama_Workshop_Groups.Services
ADD CONSTRAINT workshop_group_id_fk
FOREIGN KEY (workshop_group_id)
REFERENCES cre_Drama_Workshop_Groups.Drama_Workshop_Groups(Workshop_Group_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Bookings_Services
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES cre_Drama_Workshop_Groups.Bookings(Booking_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Bookings_Services
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES cre_Drama_Workshop_Groups.Services(Service_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Invoice_Items
ADD CONSTRAINT invoice_id_fk
FOREIGN KEY (invoice_id)
REFERENCES cre_Drama_Workshop_Groups.Invoices(Invoice_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Invoice_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES cre_Drama_Workshop_Groups.Bookings_Services(Order_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Invoice_Items
ADD CONSTRAINT order_item_id_fk
FOREIGN KEY (order_item_id)
REFERENCES cre_Drama_Workshop_Groups.Order_Items(Order_Item_ID);

ALTER TABLE cre_Drama_Workshop_Groups.Invoice_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES cre_Drama_Workshop_Groups.Bookings_Services(Product_ID);

ALTER TABLE car_1.countries
ADD CONSTRAINT continent_fk
FOREIGN KEY (continent)
REFERENCES car_1.continents(ContId);

ALTER TABLE car_1.car_makers
ADD CONSTRAINT country_fk
FOREIGN KEY (country)
REFERENCES car_1.countries(CountryId);

ALTER TABLE car_1.model_list
ADD CONSTRAINT maker_fk
FOREIGN KEY (maker)
REFERENCES car_1.car_makers(Id);

ALTER TABLE car_1.car_names
ADD CONSTRAINT model_fk
FOREIGN KEY (model)
REFERENCES car_1.model_list(Model);

ALTER TABLE car_1.cars_data
ADD CONSTRAINT id_fk
FOREIGN KEY (id)
REFERENCES car_1.car_names(MakeId);

ALTER TABLE geo.city
ADD CONSTRAINT state_name_fk
FOREIGN KEY (state_name)
REFERENCES geo.state(state_name);

ALTER TABLE geo.border_info
ADD CONSTRAINT state_name_fk
FOREIGN KEY (state_name)
REFERENCES geo.state(state_name);

ALTER TABLE geo.border_info
ADD CONSTRAINT border_fk
FOREIGN KEY (border)
REFERENCES geo.state(state_name);

ALTER TABLE geo.highlow
ADD CONSTRAINT state_name_fk
FOREIGN KEY (state_name)
REFERENCES geo.state(state_name);

ALTER TABLE geo.mountain
ADD CONSTRAINT state_name_fk
FOREIGN KEY (state_name)
REFERENCES geo.state(state_name);

ALTER TABLE geo.river
ADD CONSTRAINT traverse_fk
FOREIGN KEY (traverse)
REFERENCES geo.state(state_name);

ALTER TABLE behavior_monitoring.Students
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES behavior_monitoring.Addresses(address_id);

ALTER TABLE behavior_monitoring.Teachers
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES behavior_monitoring.Addresses(address_id);

ALTER TABLE behavior_monitoring.Assessment_Notes
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES behavior_monitoring.Students(student_id);

ALTER TABLE behavior_monitoring.Assessment_Notes
ADD CONSTRAINT teacher_id_fk
FOREIGN KEY (teacher_id)
REFERENCES behavior_monitoring.Teachers(teacher_id);

ALTER TABLE behavior_monitoring.Behavior_Incident
ADD CONSTRAINT incident_type_code_fk
FOREIGN KEY (incident_type_code)
REFERENCES behavior_monitoring.Ref_Incident_Type(incident_type_code);

ALTER TABLE behavior_monitoring.Behavior_Incident
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES behavior_monitoring.Students(student_id);

ALTER TABLE behavior_monitoring.Detention
ADD CONSTRAINT detention_type_code_fk
FOREIGN KEY (detention_type_code)
REFERENCES behavior_monitoring.Ref_Detention_Type(detention_type_code);

ALTER TABLE behavior_monitoring.Detention
ADD CONSTRAINT teacher_id_fk
FOREIGN KEY (teacher_id)
REFERENCES behavior_monitoring.Teachers(teacher_id);

ALTER TABLE behavior_monitoring.Student_Addresses
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES behavior_monitoring.Students(student_id);

ALTER TABLE behavior_monitoring.Student_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES behavior_monitoring.Addresses(address_id);

ALTER TABLE behavior_monitoring.Students_in_Detention
ADD CONSTRAINT student_id_fk
FOREIGN KEY (student_id)
REFERENCES behavior_monitoring.Students(student_id);

ALTER TABLE behavior_monitoring.Students_in_Detention
ADD CONSTRAINT detention_id_fk
FOREIGN KEY (detention_id)
REFERENCES behavior_monitoring.Detention(detention_id);

ALTER TABLE behavior_monitoring.Students_in_Detention
ADD CONSTRAINT incident_id_fk
FOREIGN KEY (incident_id)
REFERENCES behavior_monitoring.Behavior_Incident(incident_id);

ALTER TABLE cre_Doc_Tracking_DB.All_Documents
ADD CONSTRAINT date_stored_fk
FOREIGN KEY (date_stored)
REFERENCES cre_Doc_Tracking_DB.Ref_Calendar(Calendar_Date);

ALTER TABLE cre_Doc_Tracking_DB.All_Documents
ADD CONSTRAINT document_type_code_fk
FOREIGN KEY (document_type_code)
REFERENCES cre_Doc_Tracking_DB.Ref_Document_Types(Document_Type_Code);

ALTER TABLE cre_Doc_Tracking_DB.Employees
ADD CONSTRAINT role_code_fk
FOREIGN KEY (role_code)
REFERENCES cre_Doc_Tracking_DB.Roles(Role_Code);

ALTER TABLE cre_Doc_Tracking_DB.Document_Locations
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Tracking_DB.All_Documents(Document_ID);

ALTER TABLE cre_Doc_Tracking_DB.Document_Locations
ADD CONSTRAINT location_code_fk
FOREIGN KEY (location_code)
REFERENCES cre_Doc_Tracking_DB.Ref_Locations(Location_Code);

ALTER TABLE cre_Doc_Tracking_DB.Document_Locations
ADD CONSTRAINT date_in_location_from_fk
FOREIGN KEY (date_in_location_from)
REFERENCES cre_Doc_Tracking_DB.Ref_Calendar(Calendar_Date);

ALTER TABLE cre_Doc_Tracking_DB.Document_Locations
ADD CONSTRAINT date_in_locaton_to_fk
FOREIGN KEY (date_in_locaton_to)
REFERENCES cre_Doc_Tracking_DB.Ref_Calendar(Calendar_Date);

ALTER TABLE cre_Doc_Tracking_DB.Documents_to_be_Destroyed
ADD CONSTRAINT document_id_fk
FOREIGN KEY (document_id)
REFERENCES cre_Doc_Tracking_DB.All_Documents(Document_ID);

ALTER TABLE cre_Doc_Tracking_DB.Documents_to_be_Destroyed
ADD CONSTRAINT destruction_authorised_by_employee_id_fk
FOREIGN KEY (destruction_authorised_by_employee_id)
REFERENCES cre_Doc_Tracking_DB.Employees(Employee_ID);

ALTER TABLE cre_Doc_Tracking_DB.Documents_to_be_Destroyed
ADD CONSTRAINT destroyed_by_employee_id_fk
FOREIGN KEY (destroyed_by_employee_id)
REFERENCES cre_Doc_Tracking_DB.Employees(Employee_ID);

ALTER TABLE cre_Doc_Tracking_DB.Documents_to_be_Destroyed
ADD CONSTRAINT planned_destruction_date_fk
FOREIGN KEY (planned_destruction_date)
REFERENCES cre_Doc_Tracking_DB.Ref_Calendar(Calendar_Date);

ALTER TABLE cre_Doc_Tracking_DB.Documents_to_be_Destroyed
ADD CONSTRAINT actual_destruction_date_fk
FOREIGN KEY (actual_destruction_date)
REFERENCES cre_Doc_Tracking_DB.Ref_Calendar(Calendar_Date);

ALTER TABLE university_basketball.basketball_match
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES university_basketball.university(School_ID);

ALTER TABLE soccer_2.Tryout
ADD CONSTRAINT pid_fk
FOREIGN KEY (pid)
REFERENCES soccer_2.Player(pID);

ALTER TABLE soccer_2.Tryout
ADD CONSTRAINT cname_fk
FOREIGN KEY (cname)
REFERENCES soccer_2.College(cName);

ALTER TABLE activity_1.Participates_in
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES activity_1.Student(StuID);

ALTER TABLE activity_1.Participates_in
ADD CONSTRAINT actid_fk
FOREIGN KEY (actid)
REFERENCES activity_1.Activity(actid);

ALTER TABLE activity_1.Faculty_Participates_in
ADD CONSTRAINT facid_fk
FOREIGN KEY (facid)
REFERENCES activity_1.Faculty(FacID);

ALTER TABLE activity_1.Faculty_Participates_in
ADD CONSTRAINT actid_fk
FOREIGN KEY (actid)
REFERENCES activity_1.Activity(actid);

ALTER TABLE cre_Theme_park.Hotels
ADD CONSTRAINT star_rating_code_fk
FOREIGN KEY (star_rating_code)
REFERENCES cre_Theme_park.Ref_Hotel_Star_Ratings(star_rating_code);

ALTER TABLE cre_Theme_park.Tourist_Attractions
ADD CONSTRAINT attraction_type_code_fk
FOREIGN KEY (attraction_type_code)
REFERENCES cre_Theme_park.Ref_Attraction_Types(Attraction_Type_Code);

ALTER TABLE cre_Theme_park.Tourist_Attractions
ADD CONSTRAINT location_id_fk
FOREIGN KEY (location_id)
REFERENCES cre_Theme_park.Locations(Location_ID);

ALTER TABLE cre_Theme_park.Street_Markets
ADD CONSTRAINT market_id_fk
FOREIGN KEY (market_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Shops
ADD CONSTRAINT shop_id_fk
FOREIGN KEY (shop_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Museums
ADD CONSTRAINT museum_id_fk
FOREIGN KEY (museum_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Royal_Family
ADD CONSTRAINT royal_family_id_fk
FOREIGN KEY (royal_family_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Theme_Parks
ADD CONSTRAINT theme_park_id_fk
FOREIGN KEY (theme_park_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Visits
ADD CONSTRAINT tourist_attraction_id_fk
FOREIGN KEY (tourist_attraction_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Visits
ADD CONSTRAINT tourist_id_fk
FOREIGN KEY (tourist_id)
REFERENCES cre_Theme_park.Visitors(Tourist_ID);

ALTER TABLE cre_Theme_park.Photos
ADD CONSTRAINT tourist_attraction_id_fk
FOREIGN KEY (tourist_attraction_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Staff
ADD CONSTRAINT tourist_attraction_id_fk
FOREIGN KEY (tourist_attraction_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Tourist_Attraction_Features
ADD CONSTRAINT tourist_attraction_id_fk
FOREIGN KEY (tourist_attraction_id)
REFERENCES cre_Theme_park.Tourist_Attractions(Tourist_Attraction_ID);

ALTER TABLE cre_Theme_park.Tourist_Attraction_Features
ADD CONSTRAINT feature_id_fk
FOREIGN KEY (feature_id)
REFERENCES cre_Theme_park.Features(Feature_ID);

ALTER TABLE twitter_1.follows
ADD CONSTRAINT f1_fk
FOREIGN KEY (f1)
REFERENCES twitter_1.user_profiles(uid);

ALTER TABLE twitter_1.follows
ADD CONSTRAINT f2_fk
FOREIGN KEY (f2)
REFERENCES twitter_1.user_profiles(uid);

ALTER TABLE twitter_1.tweets
ADD CONSTRAINT uid_fk
FOREIGN KEY (uid)
REFERENCES twitter_1.user_profiles(uid);

ALTER TABLE election_representative.election
ADD CONSTRAINT representative_id_fk
FOREIGN KEY (representative_id)
REFERENCES election_representative.representative(Representative_ID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT stuid_fk
FOREIGN KEY (stuid)
REFERENCES voter_2.Student(StuID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT president_vote_fk
FOREIGN KEY (president_vote)
REFERENCES voter_2.Student(StuID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT vice_president_vote_fk
FOREIGN KEY (vice_president_vote)
REFERENCES voter_2.Student(StuID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT secretary_vote_fk
FOREIGN KEY (secretary_vote)
REFERENCES voter_2.Student(StuID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT treasurer_vote_fk
FOREIGN KEY (treasurer_vote)
REFERENCES voter_2.Student(StuID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT class_president_vote_fk
FOREIGN KEY (class_president_vote)
REFERENCES voter_2.Student(StuID);

ALTER TABLE voter_2.Voting_record
ADD CONSTRAINT class_senator_vote_fk
FOREIGN KEY (class_senator_vote)
REFERENCES voter_2.Student(StuID);

ALTER TABLE wedding.wedding
ADD CONSTRAINT church_id_fk
FOREIGN KEY (church_id)
REFERENCES wedding.church(Church_ID);

ALTER TABLE wedding.wedding
ADD CONSTRAINT male_id_fk
FOREIGN KEY (male_id)
REFERENCES wedding.people(People_ID);

ALTER TABLE wedding.wedding
ADD CONSTRAINT female_id_fk
FOREIGN KEY (female_id)
REFERENCES wedding.people(People_ID);

ALTER TABLE news_report.news_report
ADD CONSTRAINT journalist_id_fk
FOREIGN KEY (journalist_id)
REFERENCES news_report.journalist(journalist_ID);

ALTER TABLE news_report.news_report
ADD CONSTRAINT event_id_fk
FOREIGN KEY (event_id)
REFERENCES news_report.event(Event_ID);

ALTER TABLE wine_1.wine
ADD CONSTRAINT grape_fk
FOREIGN KEY (grape)
REFERENCES wine_1.grapes(Grape);

ALTER TABLE wine_1.wine
ADD CONSTRAINT appelation_fk
FOREIGN KEY (appelation)
REFERENCES wine_1.appellations(Appelation);

ALTER TABLE customers_and_addresses.Customer_Addresses
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_addresses.Customers(customer_id);

ALTER TABLE customers_and_addresses.Customer_Addresses
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES customers_and_addresses.Addresses(address_id);

ALTER TABLE customers_and_addresses.Customer_Contact_Channels
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_addresses.Customers(customer_id);

ALTER TABLE customers_and_addresses.Customer_Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_addresses.Customers(customer_id);

ALTER TABLE customers_and_addresses.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES customers_and_addresses.Customer_Orders(order_id);

ALTER TABLE customers_and_addresses.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customers_and_addresses.Products(product_id);

ALTER TABLE protein_institute.Institution
ADD CONSTRAINT building_id_fk
FOREIGN KEY (building_id)
REFERENCES protein_institute.building(building_id);

ALTER TABLE protein_institute.protein
ADD CONSTRAINT institution_id_fk
FOREIGN KEY (institution_id)
REFERENCES protein_institute.Institution(Institution_id);

ALTER TABLE school_player.school_details
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES school_player.school(School_ID);

ALTER TABLE school_player.school_performance
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES school_player.school(School_ID);

ALTER TABLE school_player.player
ADD CONSTRAINT school_id_fk
FOREIGN KEY (school_id)
REFERENCES school_player.school(School_ID);

ALTER TABLE phone_1.phone
ADD CONSTRAINT chip_model_fk
FOREIGN KEY (chip_model)
REFERENCES phone_1.chip_model(Model_name);

ALTER TABLE phone_1.phone
ADD CONSTRAINT screen_mode_fk
FOREIGN KEY (screen_mode)
REFERENCES phone_1.screen_mode(Graphics_mode);

ALTER TABLE tvshow.TV_series
ADD CONSTRAINT channel_fk
FOREIGN KEY (channel)
REFERENCES tvshow.TV_Channel(id);

ALTER TABLE tvshow.Cartoon
ADD CONSTRAINT channel_fk
FOREIGN KEY (channel)
REFERENCES tvshow.TV_Channel(id);

ALTER TABLE wrestler.Elimination
ADD CONSTRAINT wrestler_id_fk
FOREIGN KEY (wrestler_id)
REFERENCES wrestler.wrestler(Wrestler_ID);

ALTER TABLE customer_complaints.Complaints
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customer_complaints.Products(product_id);

ALTER TABLE customer_complaints.Complaints
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customer_complaints.Customers(customer_id);

ALTER TABLE customer_complaints.Complaints
ADD CONSTRAINT staff_id_fk
FOREIGN KEY (staff_id)
REFERENCES customer_complaints.Staff(staff_id);

ALTER TABLE department_management.management
ADD CONSTRAINT department_id_fk
FOREIGN KEY (department_id)
REFERENCES department_management.department(Department_ID);

ALTER TABLE department_management.management
ADD CONSTRAINT head_id_fk
FOREIGN KEY (head_id)
REFERENCES department_management.head(head_ID);

ALTER TABLE customers_and_products_contacts.Customer_Address_History
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_products_contacts.Customers(customer_id);

ALTER TABLE customers_and_products_contacts.Customer_Address_History
ADD CONSTRAINT address_id_fk
FOREIGN KEY (address_id)
REFERENCES customers_and_products_contacts.Addresses(address_id);

ALTER TABLE customers_and_products_contacts.Customer_Orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers_and_products_contacts.Customers(customer_id);

ALTER TABLE customers_and_products_contacts.Order_Items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES customers_and_products_contacts.Customer_Orders(order_id);

ALTER TABLE customers_and_products_contacts.Order_Items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES customers_and_products_contacts.Products(product_id);

ALTER TABLE workshop_paper.Acceptance
ADD CONSTRAINT submission_id_fk
FOREIGN KEY (submission_id)
REFERENCES workshop_paper.submission(Submission_ID);

ALTER TABLE workshop_paper.Acceptance
ADD CONSTRAINT workshop_id_fk
FOREIGN KEY (workshop_id)
REFERENCES workshop_paper.workshop(Workshop_ID);

ALTER TABLE epinions_1.review
ADD CONSTRAINT u_id_fk
FOREIGN KEY (u_id)
REFERENCES epinions_1.useracct(u_id);

ALTER TABLE epinions_1.review
ADD CONSTRAINT i_id_fk
FOREIGN KEY (i_id)
REFERENCES epinions_1.item(i_id);

ALTER TABLE epinions_1.trust
ADD CONSTRAINT source_u_id_fk
FOREIGN KEY (source_u_id)
REFERENCES epinions_1.useracct(u_id);

ALTER TABLE epinions_1.trust
ADD CONSTRAINT target_u_id_fk
FOREIGN KEY (target_u_id)
REFERENCES epinions_1.useracct(u_id);

ALTER TABLE party_host.party_host
ADD CONSTRAINT party_id_fk
FOREIGN KEY (party_id)
REFERENCES party_host.party(Party_ID);

ALTER TABLE party_host.party_host
ADD CONSTRAINT host_id_fk
FOREIGN KEY (host_id)
REFERENCES party_host.host(Host_ID);

ALTER TABLE product_catalog.Catalog_Structure
ADD CONSTRAINT catalog_id_fk
FOREIGN KEY (catalog_id)
REFERENCES product_catalog.Catalogs(catalog_id);

ALTER TABLE product_catalog.Catalog_Contents
ADD CONSTRAINT catalog_level_number_fk
FOREIGN KEY (catalog_level_number)
REFERENCES product_catalog.Catalog_Structure(catalog_level_number);

ALTER TABLE product_catalog.Catalog_Contents_Additional_Attributes
ADD CONSTRAINT catalog_entry_id_fk
FOREIGN KEY (catalog_entry_id)
REFERENCES product_catalog.Catalog_Contents(catalog_entry_id);

ALTER TABLE product_catalog.Catalog_Contents_Additional_Attributes
ADD CONSTRAINT catalog_level_number_fk
FOREIGN KEY (catalog_level_number)
REFERENCES product_catalog.Catalog_Structure(catalog_level_number);

