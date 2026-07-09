-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" <= 3
	)

