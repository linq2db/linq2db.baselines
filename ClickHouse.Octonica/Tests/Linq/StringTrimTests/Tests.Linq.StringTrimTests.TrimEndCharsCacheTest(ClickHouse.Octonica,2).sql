-- ClickHouse.Octonica ClickHouse

SELECT
	trim(TRAILING 'ab' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

