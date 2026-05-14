-- ClickHouse.MySql ClickHouse

SELECT
	trim(TRAILING '.+' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

-- ClickHouse.MySql ClickHouse

SELECT
	trim(TRAILING 'ab' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

