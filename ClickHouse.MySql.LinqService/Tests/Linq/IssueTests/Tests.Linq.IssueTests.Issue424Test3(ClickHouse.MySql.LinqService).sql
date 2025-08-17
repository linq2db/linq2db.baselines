BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
	) t2
ORDER BY
	t2.ParentID DESC
LIMIT 1, 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

