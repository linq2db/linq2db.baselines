BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	(VALUES
		('Janet',2,CAST(NULL AS text),CAST(NULL AS text),'M'),
		('Doe',3,NULL,NULL,'M')
	) t1("FirstName", "PersonID", "LastName", "MiddleName", "Gender")

