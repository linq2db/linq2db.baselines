BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID
FROM
	(
		SELECT
			toInt32(2) as OrderElement,
			ch.ChildID as ChildID,
			ch.ParentID as ParentID
		FROM
			Child ch
	) t1

