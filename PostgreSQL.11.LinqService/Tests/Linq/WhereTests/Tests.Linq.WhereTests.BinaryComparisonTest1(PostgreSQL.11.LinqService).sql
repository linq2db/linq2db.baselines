BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				CASE
					WHEN t1."FirstName" = t1."FirstName"
						THEN True
					ELSE False
				END = CASE
					WHEN (t1."MiddleName" <> t1."LastName" OR t1."MiddleName" IS NULL)
						THEN True
					ELSE False
				END
		)
			THEN True
		ELSE False
	END

