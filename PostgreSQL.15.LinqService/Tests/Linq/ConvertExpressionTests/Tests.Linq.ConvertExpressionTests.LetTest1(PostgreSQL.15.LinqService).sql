BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID"
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
			) as "ParentID"
		FROM
			"Parent" p
	) t1
WHERE
	t1."ParentID" IS NOT NULL

