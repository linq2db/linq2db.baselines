BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TPHTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TPHTable
(
	Id            Int          NOT NULL,
	Discriminator Int          NOT NULL,
	Value1        NVarChar(50)     NULL,
	Value2        NVarChar(50)     NULL,
	Value3        NVarChar(50)     NULL,
	NullableBool  VarChar(1)       NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
INSERT BULK TPHTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Discriminator,
	t1.Id,
	t1.Value3,
	t1.NullableBool,
	t1.Value2,
	t1.Value1
FROM
	TPHTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Discriminator = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Discriminator = 2

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Discriminator = 3

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1'

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2'

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.Discriminator,
	x.Id,
	x.Value3,
	x.NullableBool,
	x.Value2,
	x.Value1
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TPHTable

