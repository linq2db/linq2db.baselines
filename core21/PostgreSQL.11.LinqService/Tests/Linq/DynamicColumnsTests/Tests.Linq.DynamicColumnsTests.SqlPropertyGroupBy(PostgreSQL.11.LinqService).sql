BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	t1."FirstName", 
	Count(*)
FROM
	"Person" t1
GROUP BY
	t1."FirstName"

