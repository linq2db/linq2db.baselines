BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_MiddleGeneric"."ParentID",
	"a_MiddleGeneric"."ChildID",
	"a_MiddleGeneric"."ParentID_1",
	"a_MiddleGeneric"."ChildID_1",
	"a_MiddleGeneric"."GrandChildID"
FROM
	"Parent" t
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID",
				"a_Bottom"."ParentID" as "ParentID_1",
				"a_Bottom"."ChildID" as "ChildID_1",
				"a_Bottom"."GrandChildID"
			FROM
				"Child" t1
					LEFT JOIN "GrandChild" "a_Bottom" ON t1."ChildID" = "a_Bottom"."ChildID"
		) "a_MiddleGeneric" ON t."ParentID" = "a_MiddleGeneric"."ParentID" AND "a_MiddleGeneric"."ChildID" > 1
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"

