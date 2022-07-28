CREATE TABLE IF NOT EXISTS foriegntest(
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(255),
    port_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (dest_port_id) REFERENCES Airport(id)
);

INSERT INTO foriegntest (name, port_id)
SELECT "Mr.Test", id
FROM airport
WHERE code = "LAX"
LIMIT 1;

SELECT * FROM foriegntest;



CREATE TABLE IF NOT EXISTS foriegntest2(
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(255),
    origin_port_id INT NOT NULL,
    dest_port_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (origin_port_id) REFERENCES Airport(id),
    FOREIGN KEY (dest_port_id) REFERENCES Airport(id)
);


INSERT INTO foriegntest2 (name, origin_port_id, dest_port_id)
VALUES 
(
"Mr.Test", 
(SELECT id FROM airport WHERE code = "LAX" LIMIT 1),
(SELECT id FROM airport WHERE code = "MIA" LIMIT 1)
)
;
select * from foriegntest2;