-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" t1
	)

