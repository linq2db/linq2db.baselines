-- ClickHouse.Driver ClickHouse

ALTER TABLE
	TableWithConverterValue
UPDATE
	Test1 = CASE
		WHEN (Id > 0) THEN 'X'
		ELSE NULL
	END
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

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

