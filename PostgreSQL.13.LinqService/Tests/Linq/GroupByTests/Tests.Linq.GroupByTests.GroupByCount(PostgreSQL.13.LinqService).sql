BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			gr."ParentID" as "Key_1"
		FROM
			"Child" gr
		GROUP BY
			gr."ParentID"
	) t1

