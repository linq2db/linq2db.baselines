-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"
WHERE
	Trunc(c_1."ChildID" / 2) <> 10 OR c_1."ChildID" IS NULL

