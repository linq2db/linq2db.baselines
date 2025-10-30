BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	minOrNull(t1.ParentID)
FROM
	Parent t1
WHERE
	t1.ParentID < 0

