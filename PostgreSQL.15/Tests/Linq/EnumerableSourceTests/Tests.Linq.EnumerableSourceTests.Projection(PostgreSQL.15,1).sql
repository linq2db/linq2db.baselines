﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."ID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	(VALUES
		('Janet',2,CAST(NULL AS text),CAST(NULL AS text),'M'),
		('Doe',3,NULL,NULL,'M')
	) t1("FirstName", "ID", "LastName", "MiddleName", "Gender")

