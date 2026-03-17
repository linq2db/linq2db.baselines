-- Oracle.11.Managed Oracle11

SELECT
	gc."ParentID",
	gc."ChildID",
	gc."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" gc ON p."ParentID" = gc."ParentID"
WHERE
	gc."ChildID" = 22

