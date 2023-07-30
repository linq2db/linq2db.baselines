BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT NULL as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT toInt32(1) as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT NULL as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT toInt32(2) as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT toInt32(3) as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

