BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" parent_1,
	(
		SELECT
			child_1."ParentID",
			child_1."ChildID"
		FROM
			"Parent" parent_2,
			"Child" child_1
	) s
		LEFT JOIN "GrandChild" t1 ON s."ParentID" = t1."ParentID" AND s."ChildID" = t1."ChildID"

