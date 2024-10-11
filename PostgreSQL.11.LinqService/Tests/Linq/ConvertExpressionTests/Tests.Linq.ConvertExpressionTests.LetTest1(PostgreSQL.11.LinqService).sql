BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			(
				SELECT
					"a_Children"."ParentID"
				FROM
					"Child" "a_Children"
				WHERE
					p."ParentID" = "a_Children"."ParentID"
				LIMIT 1
			) as c1
		FROM
			"Parent" p
	) t1
WHERE
	t1.c1 IS NOT NULL

