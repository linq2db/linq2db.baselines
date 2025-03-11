BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	StringTypesTable t
WHERE
	startsWith(t.CharColumn, 'some') AND
	startsWith(t.NCharColumn, 'some') AND
	startsWith(t.VarCharColumn, 'some') AND
	startsWith(t.NVarCharColumn, 'some')

