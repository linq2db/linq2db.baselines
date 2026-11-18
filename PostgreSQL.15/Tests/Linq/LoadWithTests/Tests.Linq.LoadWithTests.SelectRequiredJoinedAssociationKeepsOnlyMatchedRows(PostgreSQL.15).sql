-- PostgreSQL.15 PostgreSQL12
SELECT
	c_1."ChildID",
	t1."ParentID",
	t1."Value1"
FROM
	"Child" c_1
		INNER JOIN LATERAL (
			SELECT
				p."ParentID",
				p."Value1"
			FROM
				(
					SELECT
						g_1."ParentID"
					FROM
						"GrandChild" g_1
					WHERE
						g_1."ChildID" = c_1."ChildID"
					LIMIT 1
				) "a_LinkedParentRequired"
					INNER JOIN "Parent" p ON "a_LinkedParentRequired"."ParentID" = p."ParentID"
		) t1 ON 1=1

