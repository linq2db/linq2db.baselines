BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	Child
SET
	Child.ChildID = :ChildID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Parent x
				INNER JOIN Child c_1 ON x.ParentID = c_1.ParentID
				INNER JOIN Child c_2 ON c_1.ParentID = c_2.ChildID
		WHERE
			1 = 0 AND Child.ParentID = c_1.ParentID
	)

