BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1,
	t1.Value2
FROM
	(
		SELECT NULL as Value1, NULL as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1,
	t1.Value2
FROM
	(
		SELECT toInt32(1) as Value1, toInt32(2) as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1,
	t1.Value2
FROM
	(
		SELECT NULL as Value1, toInt32(2) as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1,
	t1.Value2
FROM
	(
		SELECT toInt32(2) as Value1, NULL as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1,
	t1.Value2
FROM
	(
		SELECT toInt32(3) as Value1, toInt32(3) as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) t1

