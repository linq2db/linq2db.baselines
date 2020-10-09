BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @n Int32
SET     @n = 1

SELECT 
	ch.ParentID, 
	ch.ChildID
FROM
	Child ch
WHERE
	ROWNUM <= :n

