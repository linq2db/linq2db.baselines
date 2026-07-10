-- PostgreSQL.19 PostgreSQL12

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" > 3
	)

