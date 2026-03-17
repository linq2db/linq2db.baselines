-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT DISTINCT
	CASE
		WHEN (
			SELECT
				AVG("a_Children"."ParentID")
			FROM
				"Child" "a_Children"
			WHERE
				g_1."ParentID" = "a_Children"."ParentID"
		) > 3
			THEN True
		ELSE False
	END
FROM
	"Parent" g_1
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children_1"
		WHERE
			g_1."ParentID" = "a_Children_1"."ParentID"
	) > 0

