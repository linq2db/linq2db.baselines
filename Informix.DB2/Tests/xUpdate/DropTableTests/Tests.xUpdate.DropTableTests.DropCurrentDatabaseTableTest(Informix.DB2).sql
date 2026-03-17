-- Informix.DB2 Informix

DROP TABLE IF EXISTS DropTableTest

-- Informix.DB2 Informix

CREATE TABLE DropTableTest
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	DropTableTest t1

-- Informix.DB2 Informix

DROP TABLE DropTableTest

-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	DropTableTest t1

