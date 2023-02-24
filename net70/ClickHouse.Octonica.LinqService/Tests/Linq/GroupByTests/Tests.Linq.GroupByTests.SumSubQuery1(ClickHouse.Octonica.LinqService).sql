BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sumOrNull(t1.ParentID - toInt32(3))
FROM
	(
		SELECT
			ch.ParentID + toInt32(1) as ParentID,
			ch.ChildID as ChildID
		FROM
			Child ch
		WHERE
			ch.ParentID > toInt32(-1)
	) t1
GROUP BY
	t1.ParentID,
	t1.ChildID

