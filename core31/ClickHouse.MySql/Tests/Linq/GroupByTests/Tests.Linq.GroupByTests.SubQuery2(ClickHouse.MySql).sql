BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID
FROM
	(
		SELECT
			ch.ParentID + toInt32(1) as ParentID
		FROM
			Child ch
		WHERE
			ch.ParentID > toInt32(0)
	) t1
GROUP BY
	t1.ParentID

