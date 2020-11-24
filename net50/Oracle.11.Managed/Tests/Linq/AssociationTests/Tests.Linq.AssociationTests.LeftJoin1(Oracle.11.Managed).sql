BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" t1 ON p."ParentID" = t1."ParentID"
WHERE
	p."ParentID" >= 4

