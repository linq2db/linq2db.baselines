﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" || ' I' = 'John I'

