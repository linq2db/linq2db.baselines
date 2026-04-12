-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID
FROM
	Parent c_1
UNION DISTINCT
SELECT
	c_2.ParentID as ParentID
FROM
	Parent c_2
UNION ALL
SELECT
	t1.ParentID as ParentID
FROM
	(
		SELECT
			c_3.ParentID as ParentID
		FROM
			Parent c_3
		UNION DISTINCT
		SELECT
			c_4.ParentID as ParentID
		FROM
			Parent c_4
	) t1

