BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."PersonID" = 1 THEN True
		ELSE False
	END
FROM
	"Person" p

