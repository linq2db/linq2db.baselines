BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	SampleClass
UPDATE
	Value = 20 + Value * 2
WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass t1

