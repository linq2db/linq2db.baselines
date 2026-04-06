-- DuckDB
DECLARE $Test1  -- Object
SET     $Test1 = NULL

UPDATE
	TableWithConverterValue
SET
	Test1 = CAST($Test1 AS VARCHAR)
WHERE
	TableWithConverterValue.Id = 1

-- DuckDB

SELECT
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 1
LIMIT 2

-- DuckDB
DECLARE $Test1 NVarChar(1) -- String
SET     $Test1 = 'X'

UPDATE
	TableWithConverterValue
SET
	Test1 = CAST($Test1 AS VARCHAR)
WHERE
	TableWithConverterValue.Id = 2

-- DuckDB

SELECT
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 2
LIMIT 2

-- DuckDB
DECLARE $Test1 NVarChar(1) -- String
SET     $Test1 = 'X'

SELECT
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Test1 = CAST($Test1 AS VARCHAR)

