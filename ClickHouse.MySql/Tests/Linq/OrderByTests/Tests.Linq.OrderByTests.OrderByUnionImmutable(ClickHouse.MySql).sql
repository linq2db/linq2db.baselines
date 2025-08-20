BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID,
	t1.OrderElement
FROM
	(
		SELECT
			toInt32(1) as OrderElement,
			ch.ChildID as ChildID,
			ch.ParentID as ParentID
		FROM
			Child ch
		UNION ALL
		SELECT
			toInt32(2) as OrderElement,
			ch_1.ChildID as ChildID,
			ch_1.ParentID as ParentID
		FROM
			Child ch_1
	) t1
ORDER BY
	t1.OrderElement

