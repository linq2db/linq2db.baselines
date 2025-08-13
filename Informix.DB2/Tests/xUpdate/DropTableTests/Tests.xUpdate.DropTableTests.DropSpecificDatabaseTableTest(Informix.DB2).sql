BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DropTableTest
(
	ID Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO testdb:informix.DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	testdb:informix.DropTableTest t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE testdb:informix.DropTableTest

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	testdb:informix.DropTableTest t1

