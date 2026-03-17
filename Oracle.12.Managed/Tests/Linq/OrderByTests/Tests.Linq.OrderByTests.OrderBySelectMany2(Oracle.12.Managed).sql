-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" c_1
		INNER JOIN "Parent" a_Parent1 ON c_1."ParentID" = a_Parent1."ParentID"
WHERE
	p."ParentID" = a_Parent1."ParentID"
ORDER BY
	p."ParentID",
	c_1."ChildID"

