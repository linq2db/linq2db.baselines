BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.c1
FROM
	(
		SELECT
			ch.ParentID + toInt32(1) as c1
		FROM
			Child ch
		WHERE
			ch.ParentID > toInt32(0)
	) t1
GROUP BY
	t1.c1

