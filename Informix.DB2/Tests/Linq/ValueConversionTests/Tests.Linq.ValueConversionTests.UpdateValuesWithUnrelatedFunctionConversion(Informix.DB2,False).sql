-- Informix.DB2 Informix
DECLARE @yes VarChar(1) -- String
SET     @yes = 'X'
DECLARE @no VarChar -- String
SET     @no = NULL

UPDATE
	TableWithConverterValue x
SET
	Test1 = CASE
		WHEN (x.Id > 0) THEN @yes::NVarChar(1)
		ELSE @no::NVarChar(255)
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

