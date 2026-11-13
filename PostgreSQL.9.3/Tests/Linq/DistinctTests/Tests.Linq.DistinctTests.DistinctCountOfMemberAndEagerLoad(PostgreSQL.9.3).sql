-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) t1

