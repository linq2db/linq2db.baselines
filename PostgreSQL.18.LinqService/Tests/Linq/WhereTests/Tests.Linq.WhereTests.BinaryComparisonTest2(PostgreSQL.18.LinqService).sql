BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" t1
		WHERE
			t1."MiddleName" = t1."LastName"
	)

