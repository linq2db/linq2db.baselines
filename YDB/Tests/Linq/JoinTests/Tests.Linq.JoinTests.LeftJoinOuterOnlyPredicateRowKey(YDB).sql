-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN Child c_1 ON (c_1.ParentID, c_1.ChildID) = (CASE
			WHEN p.ParentID <> 2 THEN p.ParentID
			ELSE NULL
		END, p.ParentID * 10 + 1)

