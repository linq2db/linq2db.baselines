BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."ParentID_1",
	t2."ChildID",
	t1."GrandChildID"
FROM
	(
		SELECT
			child_1."ParentID",
			child_1."ChildID",
			parent_1."ParentID" as "ParentID_1"
		FROM
			"Parent" parent_1,
			"Child" child_1
	) t2
		LEFT JOIN "GrandChild" t1 ON t2."ParentID" = t1."ParentID" AND t2."ChildID" = t1."ChildID"

