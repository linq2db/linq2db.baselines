﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."PersonID",
	gjd_ri."PersonID",
	gjd_ri."Diagnosis"
FROM
	"Person" p
		INNER JOIN "Patient" gjd_ri ON gjd_ri."PersonID" = p."PersonID"
WHERE
	Lower(p."FirstName") LIKE '%test%'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE '%test%'

