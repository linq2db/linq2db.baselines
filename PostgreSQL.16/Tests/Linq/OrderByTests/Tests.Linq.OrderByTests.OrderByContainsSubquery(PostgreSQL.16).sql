BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."PersonID",
	t1."LastName",
	CASE
		WHEN t1."PersonID" IN (1, 3) THEN True
		ELSE False
	END
FROM
	"Person" t1
ORDER BY
	CASE
		WHEN t1."PersonID" IN (1, 3) THEN True
		ELSE False
	END

