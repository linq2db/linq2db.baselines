-- YDB Ydb

UPDATE
	TableWithConverterValue
SET
	Test1 = CASE
		WHEN (TableWithConverterValue.Id > 0) THEN 'X'u
		ELSE NULL
	END
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

