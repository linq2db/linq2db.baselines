﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH "CTE_1"
(
	"ID",
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		t1."ID",
		t1."FirstName",
		t1."LastName",
		t1."MiddleName",
		t1."Gender"
	FROM
		(VALUES
			(10,'FN1',10,'LN1',NULL::text,'M'),
			(11,'FN2',11,NULL,NULL,'F')
		) t1("ID", "FirstName", "ID0", "LastName", "MiddleName", "Gender")
)
SELECT
	p."FirstName",
	p."ID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"CTE_1" p
WHERE
	p."ID" = 11

