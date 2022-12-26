BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	sumOrNull(ch.ParentID - toInt32(2))
FROM
	Child ch
WHERE
	ch.ParentID > toInt32(-1)
GROUP BY
	ch.ParentID + toInt32(1),
	ch.ChildID

