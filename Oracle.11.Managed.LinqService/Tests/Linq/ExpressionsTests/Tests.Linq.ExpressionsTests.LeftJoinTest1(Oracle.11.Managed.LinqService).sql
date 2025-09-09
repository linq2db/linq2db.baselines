BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."ParentID",
	t."ChildID",
	i."ParentID",
	i."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" i ON t."ParentID" = i."ParentID"

