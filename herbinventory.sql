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

