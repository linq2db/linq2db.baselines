BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.n,
	sumOrNull(t1.ParentID)
FROM
	(
		SELECT
			ch.ChildID + toInt32(1) as n,
			ch.ParentID as ParentID
		FROM
			Child ch
	) t1
GROUP BY
	t1.n

