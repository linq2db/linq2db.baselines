BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID,
	2
FROM
	(
		SELECT
			ch.ChildID as ChildID,
			ch.ParentID as ParentID
		FROM
			Child ch
	) t1

