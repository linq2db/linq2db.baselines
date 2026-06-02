-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			p.Value1 as Value1,
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < 5
		UNION DISTINCT
		SELECT
			p_1.Value1 as Value1,
			p_1.ParentID as ParentID
		FROM
			Parent p_1
		WHERE
			p_1.ParentID >= 3
	) t1
ORDER BY
	t1.Value1 NULLS LAST,
	t1.ParentID
LIMIT 3

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

