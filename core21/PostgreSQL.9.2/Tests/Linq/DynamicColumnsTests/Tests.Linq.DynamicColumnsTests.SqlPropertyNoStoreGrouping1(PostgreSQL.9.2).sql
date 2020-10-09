BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1."FirstName", 
	Count(*)
FROM
	"Person" t1
GROUP BY
	t1."FirstName"
ORDER BY
	t1."FirstName"

