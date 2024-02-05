BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(minOrNull(t1.ParentID), toInt32(10))
FROM
	Parent t1

