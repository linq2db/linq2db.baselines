BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
WHERE
	ROWNUM <= :n

