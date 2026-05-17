-- ClickHouse.Driver ClickHouse

SELECT
	trim(TRAILING '.+' FROM t.CharColumn)
FROM
	StringTrimTable t

