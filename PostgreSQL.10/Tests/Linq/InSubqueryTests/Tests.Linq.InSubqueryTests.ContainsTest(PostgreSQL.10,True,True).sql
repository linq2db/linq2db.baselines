-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			1 = c_1."ParentID"
	)

