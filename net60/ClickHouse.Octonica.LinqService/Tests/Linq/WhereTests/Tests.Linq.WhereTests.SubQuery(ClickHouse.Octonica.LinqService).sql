BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID * toInt32(1000)
FROM
	Child ch
WHERE
	ch.ParentID * toInt32(1000) > toInt32(2000)

