﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet'), ('Doe'), ('John'), ('Doe')
		) n(item) ON p."LastName" = n.item

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (VALUES
			('Janet'), ('Doe1'), ('John'), ('Doe')
		) n(item) ON p."LastName" = n.item

