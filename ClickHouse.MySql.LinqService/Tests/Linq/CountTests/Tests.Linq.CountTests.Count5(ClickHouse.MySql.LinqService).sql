BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			Child t1
		GROUP BY
			t1.ParentID
	) t2

