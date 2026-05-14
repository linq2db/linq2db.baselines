-- ClickHouse.Driver ClickHouse

SELECT
	trim(LEADING '.+' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

-- ClickHouse.Driver ClickHouse

SELECT
	trim(LEADING 'ab' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

