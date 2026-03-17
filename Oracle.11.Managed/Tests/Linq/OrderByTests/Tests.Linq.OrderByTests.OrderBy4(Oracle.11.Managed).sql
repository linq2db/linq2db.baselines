-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ParentID" DESC,
	t1."ChildID",
	t1."ParentID" + 1 DESC

