﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat([t.Value2], ' -> ')
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat([t.Value3], ' -> ')
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat([t.Value3, t.Value1, t.Value2], ' -> ')
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	arrayStringConcat([t.Value3, t.Value3], ' -> ')
FROM
	SampleClass t

