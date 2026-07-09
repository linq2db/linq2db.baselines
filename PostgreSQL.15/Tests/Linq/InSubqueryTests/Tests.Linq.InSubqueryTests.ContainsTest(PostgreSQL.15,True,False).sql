-- PostgreSQL.15 PostgreSQL13

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			1 = c_1."ParentID"
	)

