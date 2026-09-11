-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			gr."ParentID" as "Key_1"
		FROM
			"Child" gr
	) t1

