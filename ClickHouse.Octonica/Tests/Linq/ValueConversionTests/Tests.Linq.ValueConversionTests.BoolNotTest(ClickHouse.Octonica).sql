-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.BoolValue
FROM
	ValueConversion t
WHERE
	t.BoolValue = 'N'

