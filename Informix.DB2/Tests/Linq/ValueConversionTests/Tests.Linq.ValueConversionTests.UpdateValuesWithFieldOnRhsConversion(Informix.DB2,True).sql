-- Informix.DB2 Informix

UPDATE
	TableWithConverterValue x
SET
	Test1 = CASE
		WHEN x.Test2 IS NULL THEN 'X'
		ELSE NULL
	END
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

SELECT FIRST 2
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 1

