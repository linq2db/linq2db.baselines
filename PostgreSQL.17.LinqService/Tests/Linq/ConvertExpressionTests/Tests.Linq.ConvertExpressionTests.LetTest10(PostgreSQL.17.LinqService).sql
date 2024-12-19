BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

