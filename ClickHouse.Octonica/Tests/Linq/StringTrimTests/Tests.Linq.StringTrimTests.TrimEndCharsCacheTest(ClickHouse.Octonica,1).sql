-- ClickHouse.Octonica ClickHouse
SELECT
	trim(TRAILING '.+' FROM t.VarCharColumn)
FROM
	StringTrimTable t
ORDER BY
	t.Id

