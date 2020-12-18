BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				(t1."FirstName" = t1."FirstName") = CASE
					WHEN t1."MiddleName" <> t1."LastName"
						THEN True
					ELSE False
				END
		)
			THEN True
		ELSE False
	END

