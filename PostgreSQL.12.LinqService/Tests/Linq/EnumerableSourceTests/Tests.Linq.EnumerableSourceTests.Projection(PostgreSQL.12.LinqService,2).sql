﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."ID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	(VALUES
		('Janet',3,CAST(NULL AS text),CAST(NULL AS text),'M'),
		('Doe',4,NULL,NULL,'M')
	) t1("FirstName", "ID", "LastName", "MiddleName", "Gender")

