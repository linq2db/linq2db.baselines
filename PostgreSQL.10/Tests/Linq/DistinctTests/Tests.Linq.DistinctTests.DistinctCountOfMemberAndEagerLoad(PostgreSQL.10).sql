-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) t1

