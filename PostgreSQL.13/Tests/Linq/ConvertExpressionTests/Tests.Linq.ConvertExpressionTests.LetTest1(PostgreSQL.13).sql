-- PostgreSQL.13 PostgreSQL

SELECT
	t1.cond
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
			) as cond
		FROM
			"Parent" p
	) t1
WHERE
	t1.cond IS NOT NULL

