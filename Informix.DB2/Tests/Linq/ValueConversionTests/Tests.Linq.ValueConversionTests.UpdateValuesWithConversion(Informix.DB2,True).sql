-- Informix.DB2 Informix

UPDATE
	TableWithConverterValue x
SET
	Test1 = NULL
WHERE
	x.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 1

-- Informix.DB2 Informix

UPDATE
	TableWithConverterValue x
SET
	Test1 = 'X'
WHERE
	x.Id = 2

-- Informix.DB2 Informix

SELECT FIRST 2
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 2

-- Informix.DB2 Informix

SELECT
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Test1 = 'X'

