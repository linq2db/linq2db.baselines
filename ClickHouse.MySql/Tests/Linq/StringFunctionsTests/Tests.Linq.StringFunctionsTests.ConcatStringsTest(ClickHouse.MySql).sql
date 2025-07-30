BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat([t.Value2], ' -> ')
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat([t.Value3], ' -> ')
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat([t.Value3, t.Value1, t.Value2], ' -> ')
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat([t.Value3, t.Value3], ' -> ')
FROM
	SampleClass t

