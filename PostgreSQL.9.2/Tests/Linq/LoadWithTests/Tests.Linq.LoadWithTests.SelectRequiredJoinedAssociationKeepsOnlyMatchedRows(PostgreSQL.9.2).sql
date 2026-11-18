-- PostgreSQL.9.2 PostgreSQL
SELECT
	c_1."ChildID",
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN (
			SELECT
				g_1."ParentID",
				ROW_NUMBER() OVER (PARTITION BY g_1."ChildID" ORDER BY g_1."ChildID") as rn,
				g_1."ChildID"
			FROM
				"GrandChild" g_1
		) "a_LinkedParentRequired"
			INNER JOIN "Parent" p ON "a_LinkedParentRequired"."ParentID" = p."ParentID"
		ON "a_LinkedParentRequired"."ChildID" = c_1."ChildID" AND "a_LinkedParentRequired".rn = 1

