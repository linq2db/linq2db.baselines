BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID
FROM
	(
		SELECT
			ch.ParentID + toInt32(1) as ParentID
		FROM
			Child ch
	) t1
GROUP BY
	t1.ParentID

