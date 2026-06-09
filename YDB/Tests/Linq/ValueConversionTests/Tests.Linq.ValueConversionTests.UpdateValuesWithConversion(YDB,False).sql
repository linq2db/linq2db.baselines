-- YDB Ydb
DECLARE $Test1 Text -- AnsiStringFixedLength
SET     $Test1 = NULL

UPDATE
	TableWithConverterValue
SET
	Test1 = $Test1
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
DECLARE $Test1 Text(1) -- AnsiStringFixedLength
SET     $Test1 = 'X'u

UPDATE
	TableWithConverterValue
SET
	Test1 = $Test1
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
DECLARE $Test1 Text(1) -- AnsiStringFixedLength
SET     $Test1 = 'X'u

SELECT
	x.Id as Id,
	x.NoConversion as NoConversion,
	x.Test1 as Test1,
	x.Test2 as Test2
FROM
	TableWithConverterValue x
WHERE
	x.Test1 = $Test1

