BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			child_1."ParentID",
			child_1."ChildID"
		FROM
			"Parent" parent_1,
			"Child" child_1
	) s
		LEFT JOIN "GrandChild" t1 ON s."ParentID" = t1."ParentID" AND s."ChildID" = t1."ChildID",
	"Parent" parent_2

