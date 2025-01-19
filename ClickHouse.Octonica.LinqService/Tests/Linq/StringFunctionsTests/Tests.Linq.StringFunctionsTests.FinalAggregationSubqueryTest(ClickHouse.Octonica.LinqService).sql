BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			COUNT(DISTINCT t1.Value1)
		FROM
			SampleClass t1
	),
	(
		SELECT
			arrayStringConcat(groupArray(t2.Value1), ' -> ')
		FROM
			SampleClass t2
	)
FROM
	SampleClass t

