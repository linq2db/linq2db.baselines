BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	a_Children."ChildID",
	a_Children."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" a_Children ON CAST(p."ParentID" AS Number(19)) = a_Children."ParentID"
WHERE
	p."ParentID" = 1

