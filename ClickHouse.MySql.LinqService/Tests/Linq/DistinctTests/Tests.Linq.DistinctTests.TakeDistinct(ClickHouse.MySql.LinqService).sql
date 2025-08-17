BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT DISTINCT
	t1.ParentID
FROM
	(
		SELECT
			ch.ParentID as ParentID
		FROM
			Child ch
		ORDER BY
			ch.ParentID
		LIMIT 4
	) t1

