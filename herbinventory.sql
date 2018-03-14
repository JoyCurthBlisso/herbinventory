CREATE DATABASE herbinventory;

USE herbinventory_db;

CREATE TABLE herbinventory(
	herbID int(11) NOT NULL, 
	herb varchar(255) NOT NULL,
	costperlb int (11) NOT NULL,
	qtylbs int(11) NOT NULL,
	qtyoz int(11) NOT NULL,
	retailcost int(11) NOT NULL,
	lowinventory BOOLEAN NOT NULL,
	jar BOOLEAN NOT NULL,
	storage BOOLEAN NOT NULL,
	amtremaining int(11) NOT NULL,
	categirt varchar(255) NOT NULL,
	organic varchar(255) NOT NULL
)

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(01, "lavender", 16, 4, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(02, "orris root", 16, 6, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(03, "astragalus root", 16, 10, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(04, "lemongrass", 16, 1, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(05, "Rose Buds", 16, 7, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(06, "irish moss", 16, 2, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(07, "Fo Ti root", 16, 7, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(08, "Red Raspberry", 16, 2, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(09, "Stevia", 16, 2, "Herb");

INSERT INTO herbinventory (herbid, herb, qtyoz, retailcost, category)
VALUES(10, "Don Quai", 16, 7, "Herb");