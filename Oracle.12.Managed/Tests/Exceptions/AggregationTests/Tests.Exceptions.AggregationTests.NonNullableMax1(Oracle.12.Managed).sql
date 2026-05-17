-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	MAX(t1."ParentID")
FROM
	"Parent" t1
WHERE
	t1."ParentID" < 0

