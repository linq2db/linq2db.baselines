-- ClickHouse.Driver ClickHouse

ALTER TABLE
	SampleClass
UPDATE
	Value = 10 + Value * 2
WHERE 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass t1

