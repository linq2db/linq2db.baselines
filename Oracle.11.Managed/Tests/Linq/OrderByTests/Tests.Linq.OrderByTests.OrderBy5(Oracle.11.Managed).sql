-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	MOD(t1."ChildID", 2),
	t1."ChildID"

