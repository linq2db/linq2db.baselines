BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
WHERE
	ROWNUM <= :take

