BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE SampleClass
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	CURRENT + Interval(1) Day to Day,
	CURRENT + Interval(2) Day to Day
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE SampleClass

