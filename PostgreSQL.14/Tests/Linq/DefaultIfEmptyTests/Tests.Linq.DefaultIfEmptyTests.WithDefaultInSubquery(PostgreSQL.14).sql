-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			SUM(CASE
				WHEN d."ParentID" IS NOT NULL THEN d."ParentID"
				ELSE -100
			END)
		FROM
			(
				SELECT
					-100 as "ParentID"
			) t1
				LEFT JOIN "Child" d ON p."ParentID" = d."ParentID"
	)
FROM
	"Parent" p

