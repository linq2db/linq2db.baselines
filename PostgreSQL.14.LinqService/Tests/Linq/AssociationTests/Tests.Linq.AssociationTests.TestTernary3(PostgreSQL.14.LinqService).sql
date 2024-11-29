BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN "a_Middle"."ParentID" IS NOT NULL AND "a_Bottom1"."ParentID" IS NOT NULL
			THEN True
		ELSE False
	END,
	"a_Bottom1"."ParentID",
	"a_Bottom1"."ChildID",
	"a_Bottom1"."GrandChildID"
FROM
	"Parent" t
		LEFT JOIN "Child" "a_Middle" ON t."ParentID" = "a_Middle"."ParentID"
		LEFT JOIN "GrandChild" "a_Bottom1" ON "a_Middle"."ChildID" = "a_Bottom1"."ChildID"
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"

