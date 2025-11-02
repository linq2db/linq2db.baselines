-- ClickHouse.Octonica ClickHouse

SELECT
	child_1.ParentID,
	child_1.ChildID
FROM
	(
		SELECT
			ch.ChildID as ChildID
		FROM
			GrandChild r
				INNER JOIN Child ch ON r.ChildID = ch.ChildID
		UNION DISTINCT
		SELECT
			ch_1.ChildID as ChildID
		FROM
			Child ch_1
				INNER JOIN Parent p ON ch_1.ParentID = p.ParentID
	) r_1
		INNER JOIN Child child_1 ON r_1.ChildID = child_1.ChildID

