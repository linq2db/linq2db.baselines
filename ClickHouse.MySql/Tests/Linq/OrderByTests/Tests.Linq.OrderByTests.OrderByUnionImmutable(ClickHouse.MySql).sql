BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID,
	t1.c1
FROM
	(
		SELECT
			ch.ChildID as ChildID,
			ch.ParentID as ParentID,
			toInt32(1) as c1
		FROM
			Child ch
		UNION ALL
		SELECT
			ch_1.ChildID as ChildID,
			ch_1.ParentID as ParentID,
			toInt32(2) as c1
		FROM
			Child ch_1
	) t1
ORDER BY
	t1.c1

