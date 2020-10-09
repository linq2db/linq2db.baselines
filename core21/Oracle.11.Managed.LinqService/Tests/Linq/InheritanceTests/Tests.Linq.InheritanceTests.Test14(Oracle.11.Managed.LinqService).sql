BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 10
DECLARE @take Int32
SET     @take = 1

SELECT 
	x.ChildID
FROM
	Child x
WHERE
	x.ChildID = :id AND ROWNUM <= :take

