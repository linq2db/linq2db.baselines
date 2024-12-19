BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Parent" p
		) THEN True
		ELSE False
	END

