﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	(VALUES
		('Janet',3,NULL,NULL,'M'), ('Doe',4,NULL,NULL,'M')
	) t1("FirstName", "PersonID", "LastName", "MiddleName", "Gender")

