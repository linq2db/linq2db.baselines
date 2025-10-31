-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" t1
		WHERE
			t1."MiddleName" <> t1."LastName" OR t1."MiddleName" IS NULL
	)

