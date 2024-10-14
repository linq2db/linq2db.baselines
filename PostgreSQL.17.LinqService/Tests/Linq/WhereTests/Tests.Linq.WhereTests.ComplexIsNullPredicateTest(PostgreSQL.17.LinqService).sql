BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

