-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	TableWithConverterValue
UPDATE
	Test1 = NULL
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	TableWithConverterValue
UPDATE
	Test1 = 'X'
WHERE
	Id = 2

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Test1 = 'X'

