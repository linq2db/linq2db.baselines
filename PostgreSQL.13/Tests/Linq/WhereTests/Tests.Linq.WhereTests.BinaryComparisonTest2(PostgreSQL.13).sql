-- PostgreSQL.13 PostgreSQL13

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" t1
		WHERE
			t1."MiddleName" = t1."LastName"
	)

