-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(t.Value2, '')
FROM
	SampleClass t
ORDER BY
	t.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(t.Value3, '')
FROM
	SampleClass t
ORDER BY
	t.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	arrayStringConcat([t.Value3, t.Value1, t.Value2], ' -> ')
FROM
	SampleClass t
ORDER BY
	t.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	arrayStringConcat([t.Value3, t.Value3], ' -> ')
FROM
	SampleClass t
ORDER BY
	t.Id

