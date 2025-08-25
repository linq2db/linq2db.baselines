BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" j ON p."ParentID" = j."ParentID"
WHERE
	p."ParentID" = 1

