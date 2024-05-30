BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID
FROM
	(
		SELECT
			ch.ChildID as ChildID,
			ch.ParentID as ParentID
		FROM
			Child ch
	) t1

