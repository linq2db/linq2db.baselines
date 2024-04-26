BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID,
	t1.OrderElement
FROM
	(
		SELECT
			ch.ChildID as ChildID,
			ch.ParentID as ParentID,
			1 as OrderElement
		FROM
			Child ch
		UNION ALL
		SELECT
			ch_1.ChildID as ChildID,
			ch_1.ParentID as ParentID,
			2 as OrderElement
		FROM
			Child ch_1
	) t1
ORDER BY
	t1.OrderElement

