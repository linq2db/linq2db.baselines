BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID,
	t1.OrderElement
FROM
	(
		SELECT
			2 as OrderElement,
			ch.ChildID as ChildID,
			ch.ParentID as ParentID
		FROM
			Child ch
	) t1

