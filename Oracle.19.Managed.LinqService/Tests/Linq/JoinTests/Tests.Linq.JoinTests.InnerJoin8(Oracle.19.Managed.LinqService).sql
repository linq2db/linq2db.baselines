BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID" + p."ParentID"
FROM
	"Child" t
		INNER JOIN "Parent" p ON t."ParentID" = p."ParentID"
WHERE
	t."ParentID" + p."ParentID" > 2

