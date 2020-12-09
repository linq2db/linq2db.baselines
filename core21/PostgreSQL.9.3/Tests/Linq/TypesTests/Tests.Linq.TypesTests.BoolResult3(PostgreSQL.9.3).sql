BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	CASE
		WHEN p."PersonID" = 1 THEN True
		ELSE False
	END
FROM
	"Person" p

