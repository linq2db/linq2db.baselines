-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTrun

-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTrunDetail

-- Informix.DB2 Informix

CREATE TABLE TestTrunDetail
(
	ID         Int     NOT NULL,
	TestTrunID Int     NOT NULL,
	IsActive   BOOLEAN NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix

CREATE TABLE TestTrun
(
	ID     Int     NOT NULL,
	Field1 Decimal NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix

TRUNCATE TABLE TestTrun

-- Informix.DB2 Informix

DROP TABLE TestTrun

-- Informix.DB2 Informix

DROP TABLE TestTrunDetail

