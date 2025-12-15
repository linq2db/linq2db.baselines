-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT NULL as Value1 /*TestQueryCaching_ByParameter_Formatted1*/
	) t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT 1 as Value1 /*TestQueryCaching_ByParameter_Formatted1*/
	) t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT NULL as Value1 /*TestQueryCaching_ByParameter_Formatted1*/
	) t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT 2 as Value1 /*TestQueryCaching_ByParameter_Formatted1*/
	) t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT 3 as Value1 /*TestQueryCaching_ByParameter_Formatted1*/
	) t1

