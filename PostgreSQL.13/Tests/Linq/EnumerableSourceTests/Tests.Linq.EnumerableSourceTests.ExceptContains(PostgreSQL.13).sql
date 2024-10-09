BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN r."PersonID" IN (1, 2, 3) THEN True
		ELSE False
	END
FROM
	"Person" r

