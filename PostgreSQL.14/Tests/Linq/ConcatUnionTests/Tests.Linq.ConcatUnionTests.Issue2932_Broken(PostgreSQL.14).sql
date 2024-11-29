BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ChildID",
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"GrandChild" "a_GrandChildren"
			WHERE
				p."ParentID" = "a_GrandChildren"."ParentID" AND p."ChildID" = "a_GrandChildren"."ChildID"
		)
			THEN True
		ELSE False
	END
FROM
	"Child" p
UNION ALL
SELECT
	p_1."ChildID",
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"GrandChild" "a_GrandChildren_1"
			WHERE
				p_1."ParentID" = "a_GrandChildren_1"."ParentID" AND
				p_1."ChildID" = "a_GrandChildren_1"."ChildID"
		)
			THEN True
		ELSE False
	END
FROM
	"Child" p_1

