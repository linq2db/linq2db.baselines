-- YDB Ydb
DECLARE $yes Text(1) -- String
SET     $yes = 'X'u
DECLARE $no Text -- String
SET     $no = NULL

UPDATE
	TableWithConverterValue
SET
	Test1 = CASE
		WHEN (TableWithConverterValue.Id > 0) THEN $yes
		ELSE $no
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

