BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID + toInt32(1)
FROM
	Child ch
WHERE
	ch.ParentID > toInt32(0)
GROUP BY
	ch.ParentID + toInt32(1)

