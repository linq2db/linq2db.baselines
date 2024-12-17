BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				NOT (t1."MiddleName" <> t1."LastName" OR t1."MiddleName" IS NULL)
		)
			THEN True
		ELSE False
	END

