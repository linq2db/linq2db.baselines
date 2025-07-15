BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t
WHERE
	t.Id IN (1, 2)

