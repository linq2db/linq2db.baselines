-- YDB Ydb

UPDATE
	TableWithConverterValue
SET
	Test1 = NULL
WHERE
	TableWithConverterValue.Id = 1

-- YDB Ydb

SELECT
	x.Id as Id,
	x.NoConversion as NoConversion,
	x.Test1 as Test1,
	x.Test2 as Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 1
LIMIT 2

-- YDB Ydb

UPDATE
	TableWithConverterValue
SET
	Test1 = 'X'u
WHERE
	TableWithConverterValue.Id = 2

-- YDB Ydb

SELECT
	x.Id as Id,
	x.NoConversion as NoConversion,
	x.Test1 as Test1,
	x.Test2 as Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 2
LIMIT 2

-- YDB Ydb

SELECT
	x.Id as Id,
	x.NoConversion as NoConversion,
	x.Test1 as Test1,
	x.Test2 as Test2
FROM
	TableWithConverterValue x
WHERE
	x.Test1 = 'X'u

