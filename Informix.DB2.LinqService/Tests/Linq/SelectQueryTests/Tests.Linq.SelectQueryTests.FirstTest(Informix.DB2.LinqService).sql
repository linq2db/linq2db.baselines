BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CURRENT + Interval (1) Day to Day,
	CURRENT + Interval (2) Day to Day
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

