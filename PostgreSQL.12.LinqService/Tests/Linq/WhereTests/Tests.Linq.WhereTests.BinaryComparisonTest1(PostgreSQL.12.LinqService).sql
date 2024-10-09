BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				(1 = 1) = (t1."MiddleName" <> t1."LastName" OR t1."MiddleName" IS NULL)
		)
			THEN True
		ELSE False
	END

