BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	(ch."ChildID" > 3 OR ch."ChildID" < 4) AND ROWNUM <= :take

