-- ClickHouse.MySql ClickHouse

SELECT
	trim(LEADING '.+' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

