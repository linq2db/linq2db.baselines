BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT 
	t1.ParentID, 
	t1.ChildID
FROM
	Child t1
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			Parent t2
		WHERE
			t2.ParentID = :id AND t2.ParentID = t1.ParentID
	) AND
	t1.ChildID >= 0 AND t1.ChildID <= 100

