-- ClickHouse.Octonica ClickHouse
SELECT
	c_1.ChildID,
	t1.ParentID,
	t1.Value1
FROM
	Child c_1
		INNER JOIN (
			SELECT
				a_LinkedParentRequired.ChildID as ChildID,
				a_LinkedParentRequired.rn as rn,
				p.ParentID as ParentID,
				p.Value1 as Value1
			FROM
				(
					SELECT
						g_1.ParentID as ParentID,
						ROW_NUMBER() OVER (PARTITION BY g_1.ChildID ORDER BY g_1.ChildID) as rn,
						g_1.ChildID as ChildID
					FROM
						GrandChild g_1
				) a_LinkedParentRequired
					INNER JOIN Parent p ON a_LinkedParentRequired.ParentID = p.ParentID
		) t1 ON t1.ChildID = c_1.ChildID AND t1.rn = 1

