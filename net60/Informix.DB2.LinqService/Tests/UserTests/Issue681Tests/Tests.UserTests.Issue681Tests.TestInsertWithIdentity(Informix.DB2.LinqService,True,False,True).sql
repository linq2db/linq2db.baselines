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
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table4

