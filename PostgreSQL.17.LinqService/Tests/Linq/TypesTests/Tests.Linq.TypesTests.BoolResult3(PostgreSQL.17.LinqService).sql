BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN p."PersonID" = 1 THEN True
		ELSE False
	END
FROM
	"Person" p

