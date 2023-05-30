BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @input Text(6) -- String
SET     @input = '%test%'

SELECT
	p."PersonID",
	gjd_ri."PersonID",
	gjd_ri."Diagnosis"
FROM
	"Person" p
		INNER JOIN "Patient" gjd_ri ON gjd_ri."PersonID" = p."PersonID"
WHERE
	Lower(p."FirstName") LIKE :input ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @input Text(6) -- String
SET     @input = '%test%'

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE :input ESCAPE '~'

