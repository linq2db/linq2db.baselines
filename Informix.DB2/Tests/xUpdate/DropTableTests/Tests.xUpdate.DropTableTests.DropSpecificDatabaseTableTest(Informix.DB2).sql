-- Informix.DB2 Informix

DROP TABLE IF EXISTS DropTableTest

-- Informix.DB2 Informix

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix

CREATE TABLE DropTableTest
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix

INSERT INTO testdb:informix.DropTableTest
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
	testdb:informix.DropTableTest t1

-- Informix.DB2 Informix

DROP TABLE testdb:informix.DropTableTest

-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	testdb:informix.DropTableTest t1

