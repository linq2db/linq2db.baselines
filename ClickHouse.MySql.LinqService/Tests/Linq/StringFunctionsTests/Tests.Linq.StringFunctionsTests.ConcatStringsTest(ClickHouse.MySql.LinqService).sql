BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	Coalesce(t.Value2, '')
FROM
	SampleClass t
ORDER BY
	t.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	Coalesce(t.Value3, '')
FROM
	SampleClass t
ORDER BY
	t.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	arrayStringConcat([t.Value3, t.Value1, t.Value2], ' -> ')
FROM
	SampleClass t
ORDER BY
	t.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	arrayStringConcat([t.Value3, t.Value3], ' -> ')
FROM
	SampleClass t
ORDER BY
	t.Id

