BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id        Int NOT NULL,
	NullValue Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	a.Id,
	a.NullValue
FROM
	SampleClass a
WHERE
	(a.Id = 0 AND (a.NullValue = 0 AND a.NullValue IS NOT NULL OR a.NullValue IS NULL) OR a.Id = 1 AND a.NullValue = 1 AND a.NullValue IS NOT NULL OR a.Id = 2 AND a.NullValue = 2 AND a.NullValue IS NOT NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

