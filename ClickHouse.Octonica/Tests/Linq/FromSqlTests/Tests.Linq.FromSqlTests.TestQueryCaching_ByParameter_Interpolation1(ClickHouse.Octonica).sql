-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT NULL as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT 1 as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT NULL as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT 2 as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Value1
FROM
	(
		SELECT 3 as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) t1

