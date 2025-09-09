BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
		LIMIT 1, 1
	) t2

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

