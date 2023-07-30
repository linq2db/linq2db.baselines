BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	gjd_ri."PersonID",
	gjd_ri."Diagnosis"
FROM
	"Person" p
		INNER JOIN "Patient" gjd_ri ON gjd_ri."PersonID" = p."PersonID"
WHERE
	Lower(p."FirstName") LIKE '%test%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE '%test%' ESCAPE '~'

