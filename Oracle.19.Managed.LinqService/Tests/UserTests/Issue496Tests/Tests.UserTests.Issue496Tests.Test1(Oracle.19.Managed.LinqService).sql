BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	a_Children."ChildID",
	a_Children."ParentID"
FROM
	"Parent" c_1
		INNER JOIN "Child" a_Children ON c_1."ParentID" = a_Children."ParentID"
WHERE
	c_1."ParentID" = 1

