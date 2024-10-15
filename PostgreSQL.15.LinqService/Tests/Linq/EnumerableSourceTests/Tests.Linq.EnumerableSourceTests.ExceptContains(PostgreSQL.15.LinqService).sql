BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN r."PersonID" IN (1, 2, 3) THEN True
		ELSE False
	END
FROM
	"Person" r

