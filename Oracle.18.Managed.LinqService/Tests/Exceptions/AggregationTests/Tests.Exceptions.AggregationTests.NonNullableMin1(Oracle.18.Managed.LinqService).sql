BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	MIN(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

