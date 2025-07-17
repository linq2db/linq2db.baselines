BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
FETCH NEXT 3 ROWS ONLY

