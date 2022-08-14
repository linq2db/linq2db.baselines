BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	minOrNull(t1.ParentID),
	maxOrNull(t1.ParentID)
FROM
	Parent t1

