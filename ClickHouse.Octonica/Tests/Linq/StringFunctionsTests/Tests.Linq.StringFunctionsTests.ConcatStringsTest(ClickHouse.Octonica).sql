-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value3,
	t1.Value4
FROM
	SampleClass t1
ORDER BY
	t1.Id

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

