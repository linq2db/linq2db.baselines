﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	'John123' LIKE Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(p."FirstName", '~', '~' || '~'), '%', '~' || '%'), '_', '~' || '_'), '?', '~' || '?'), '*', '~' || '*'), '#', '~' || '#'), '[', '~' || '['), ']', '~' || ']') || '%' ESCAPE '~'

