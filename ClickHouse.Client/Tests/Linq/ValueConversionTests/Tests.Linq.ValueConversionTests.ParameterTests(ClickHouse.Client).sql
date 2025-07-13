BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Value1,
	t.Value2
FROM
	ValueConversion t
WHERE
	'[{"Value":"Value1"}]' = t.Value2

