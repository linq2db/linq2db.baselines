-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
		CROSS JOIN (
			SELECT
				p.ParentID as ParentID
			FROM
				GrandChild p
			LIMIT 3
		) p_1
WHERE
	c_1.ParentID = p_1.ParentID

-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
		CROSS JOIN (
			SELECT
				p.ParentID as ParentID
			FROM
				GrandChild p
			LIMIT 3 OFFSET 12 
		) p_1
WHERE
	c_1.ParentID = p_1.ParentID

