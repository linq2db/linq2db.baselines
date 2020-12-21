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
					WHEN t1."MiddleName" = '123'
						THEN True
					ELSE False
				END = (CASE
					WHEN t1."MiddleName" = '1'
						THEN 'test'
					ELSE t1."MiddleName"
				END = 'test')
		)
			THEN True
		ELSE False
	END

