BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table4

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue681Table4
(
	ID      SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	DBSERVERNAME
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO testdb@informix:Issue681Table4
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table4

