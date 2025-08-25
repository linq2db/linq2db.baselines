BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	DBSERVERNAME
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS Issue681Table2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE testdb@informix:Issue681Table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS Issue681Table2

