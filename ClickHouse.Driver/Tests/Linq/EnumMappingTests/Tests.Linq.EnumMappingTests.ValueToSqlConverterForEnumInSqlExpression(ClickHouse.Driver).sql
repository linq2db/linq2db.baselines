-- ClickHouse.Driver ClickHouse
INSERT INTO EnumConverterTable
(
	Id,
	SomeText
)
VALUES
(
	1,
	'Value1_suffix'
)

-- ClickHouse.Driver ClickHouse
SELECT
	e.Id,
	e.SomeText
FROM
	EnumConverterTable e
WHERE
	e.SomeText = 'Value1_suffix'
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	e.Id,
	e.SomeText
FROM
	EnumConverterTable e
WHERE
	e.Id = 1
LIMIT 2

