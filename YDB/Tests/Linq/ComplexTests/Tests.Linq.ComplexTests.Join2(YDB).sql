-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID,
	g_1.ParentID as ParentID_2,
	g_1.ChildID as ChildID_1,
	g_1.GrandChildID as GrandChildID
FROM
	Parent o
		INNER JOIN Child c_1 ON o.ParentID = c_1.ChildID
		INNER JOIN GrandChild g_1 ON o.ParentID = g_1.ParentID
WHERE
	o.ParentID = $id AND c_1.ChildID > 0

