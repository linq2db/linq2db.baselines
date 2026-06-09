-- YDB Ydb
DECLARE $take Int32
SET     $take = 10

SELECT
	p_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		LIMIT $take
	) p_1
		RIGHT JOIN Child c_1 ON p_1.ParentID = c_1.ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

