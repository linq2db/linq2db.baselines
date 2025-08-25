BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ParentID
FROM
	(
		SELECT DISTINCT
			ch.ParentID as ParentID
		FROM
			Child ch
	) t1
ORDER BY
	t1.ParentID

