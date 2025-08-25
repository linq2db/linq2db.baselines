BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	minOrNull(t2.ParentID)
FROM
	(
		SELECT
			t1.ParentID as ParentID
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
		LIMIT 3
	) t2

