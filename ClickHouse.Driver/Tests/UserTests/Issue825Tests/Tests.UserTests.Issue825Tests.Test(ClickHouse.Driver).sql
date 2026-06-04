-- ClickHouse.Driver ClickHouse

SELECT
	child_1.ParentID
FROM
	Parent child_1
		INNER JOIN Child a_Childs ON child_1.ParentID = a_Childs.ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			GrandChild permission
		WHERE
			child_1.ParentID = permission.ParentID AND permission.ChildID = 32
	) AND
	a_Childs.ChildID = 32

