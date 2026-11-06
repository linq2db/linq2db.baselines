-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			c_1."ChildID"
		FROM
			"Child" c_1
	) t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			x."ChildID"
		FROM
			"Child" x
		WHERE
			x."ChildID" > 20
	) t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	MAX(t1."ChildID")
FROM
	(
		SELECT DISTINCT
			c_1."ChildID"
		FROM
			"Child" c_1
	) t1

