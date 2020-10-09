BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	ch.ParentID, 
	ch.ChildID
FROM
	Child ch
WHERE
	(ch.ChildID > 3 OR ch.ChildID < 4)
OFFSET 3 ROWS

