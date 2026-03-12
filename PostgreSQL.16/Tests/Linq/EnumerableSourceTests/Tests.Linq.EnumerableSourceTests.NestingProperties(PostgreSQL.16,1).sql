-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."FirstName",
	x."ID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	(VALUES
		(1,'Janet',2,NULL::text,NULL::text,'M'),
		(NULL,'Doe',3,NULL,NULL,'M')
	) x("Patient_PersonID", "FirstName", "ID", "LastName", "MiddleName", "Gender")
WHERE
	x."Patient_PersonID" = 1

