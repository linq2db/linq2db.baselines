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
				(t1."MiddleName" = '123') = (t1."MiddleName" = '1')
		)
			THEN True
		ELSE False
	END

