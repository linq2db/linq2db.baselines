BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DateOnlyTable
(
	"Date" DATETIME YEAR TO DAY NOT NULL
)

BeforeExecute
INSERT BULK DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1."Date"
FROM
	DateOnlyTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateOnlyTable

