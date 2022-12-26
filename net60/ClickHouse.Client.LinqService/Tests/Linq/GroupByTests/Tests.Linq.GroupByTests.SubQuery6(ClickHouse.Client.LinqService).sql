BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	ch.ParentID + toInt32(1)
FROM
	Child ch
GROUP BY
	ch.ParentID + toInt32(1)

