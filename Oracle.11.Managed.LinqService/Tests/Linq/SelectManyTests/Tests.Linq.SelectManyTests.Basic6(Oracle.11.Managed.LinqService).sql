BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	a_Children."ParentID" + 1
FROM
	"Parent" p
		INNER JOIN "Child" a_Children ON p."ParentID" = a_Children."ParentID"
WHERE
	a_Children."ParentID" > 0

