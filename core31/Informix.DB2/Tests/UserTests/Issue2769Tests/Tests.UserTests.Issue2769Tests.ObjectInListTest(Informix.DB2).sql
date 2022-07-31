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
	(a.Id = 0 AND Nvl(a.NullValue, 0) = 0 OR a.Id = 1 AND Nvl(a.NullValue, 0) = 1 OR a.Id = 2 AND Nvl(a.NullValue, 0) = 2)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

