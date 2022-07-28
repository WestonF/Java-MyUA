/* Make Some Airports */
INSERT INTO Airport(code, name)
VALUES ("LAX", "Los Angeles International Airport");

INSERT INTO Airport(code, name)
VALUES ("JFK", "John F. Kennedy International Airport");

INSERT INTO Airport(code, name)
VALUES ("SFO", "San Fransisco International Airport");

INSERT INTO Airport(code, name)
VALUES ("MIA", "Miami International Airport");

INSERT INTO Airport(code, name)
VALUES ("DEN", "Denver International Airport");

INSERT INTO Airport(code, name)
VALUES ("ATL", "Hartfield-Jackson Atlanta International Airport");

/* Make Some Staff Members */
Insert into staff_member(name)
values ("Steve Airguy");

Insert into staff_member(name)
values ("Joe Hostess");

Insert into staff_member(name)
values ("Alex Attendant");

Insert into staff_member(name)
values ("Susan Smithson");

Insert into staff_member(name)
values ("Drew Carryon");

Insert into staff_member(name)
values ("Jeff Jeneric");

/* Make Some Flights */

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
500,
'U',
(SELECT id FROM airport WHERE code = "LAX" LIMIT 1),
(SELECT id FROM airport WHERE code = "JFK" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Susan Smithson" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Alex Attendant" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Drew Carryon" LIMIT 1)
);

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
250,
'U',
(SELECT id FROM airport WHERE code = "LAX" LIMIT 1),
(SELECT id FROM airport WHERE code = "SFO" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Steve Airguy" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Joe Hostess" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Jeff Jeneric" LIMIT 1)
);

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
300,
'L',
(SELECT id FROM airport WHERE code = "ATL" LIMIT 1),
(SELECT id FROM airport WHERE code = "LAX" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Susan Smithson" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Alex Attendant" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Drew Carryon" LIMIT 1)
);

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
500,
'F',
(SELECT id FROM airport WHERE code = "LAX" LIMIT 1),
(SELECT id FROM airport WHERE code = "JFK" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Steve Airguy" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Jeff Jeneric" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Joe Hostess" LIMIT 1)
);

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
100,
'D',
(SELECT id FROM airport WHERE code = "DEN" LIMIT 1),
(SELECT id FROM airport WHERE code = "MIA" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Joe Hostess" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Drew Carryon" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Steve Airguy" LIMIT 1)
);

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
15,
'X',
(SELECT id FROM airport WHERE code = "SFO" LIMIT 1),
(SELECT id FROM airport WHERE code = "SFO" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Susan Smithson" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Steve Airguy" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Jeff Jeneric" LIMIT 1)
);

INSERT INTO flight (seats, status, origin_port_id, dest_port_id, pilot_id, staff1_id, staff2_id)
VALUES
(
500,
'L',
(SELECT id FROM airport WHERE code = "ATL" LIMIT 1),
(SELECT id FROM airport WHERE code = "SFO" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Susan Smithson" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Steve Airguy" LIMIT 1),
(SELECT id FROM staff_member WHERE name = "Jeff Jeneric" LIMIT 1)
);