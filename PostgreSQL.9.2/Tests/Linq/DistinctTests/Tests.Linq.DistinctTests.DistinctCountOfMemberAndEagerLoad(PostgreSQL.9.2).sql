-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) t1

