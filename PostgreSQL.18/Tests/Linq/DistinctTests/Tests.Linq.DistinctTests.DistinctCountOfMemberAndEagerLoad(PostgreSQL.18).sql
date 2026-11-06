-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) t1

