BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."ParentID",
	t."ChildID",
	gr."ParentID",
	gr."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" gr ON t."ParentID" = gr."ParentID"

