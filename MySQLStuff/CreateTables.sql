/* Base Tables */
/* =========== */
CREATE TABLE IF NOT EXISTS Airport(
	id INT AUTO_INCREMENT NOT NULL,
    code VARCHAR(255), /* This is one way to write a comment */
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Staff_Member(
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Flight(
	id INT AUTO_INCREMENT NOT NULL, 
	status ENUM('U', 'D', 'F', 'L', 'X') NOT NULL, /* U: Upcoming, D: Delayed, F: In Flight, L: Landed, X: Other */
    seats INT NOT NULL,
    origin_port_id INT NOT NULL,
    dest_port_id INT NOT NULL,
    pilot_id INT NOT NULL,
    staff1_id INT NOT NULL,
    staff2_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (origin_port_id) REFERENCES Airport(id),
    FOREIGN KEY (dest_port_id) REFERENCES Airport(id),
    FOREIGN KEY (pilot_id) REFERENCES Staff_Member(id),
    FOREIGN KEY (staff1_id) REFERENCES Staff_Member(id),
    FOREIGN KEY (staff2_id) REFERENCES Staff_Member(id)
);
