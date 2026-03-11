-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" j ON p."ParentID" = j."ParentID"
WHERE
	p."ParentID" = 1

