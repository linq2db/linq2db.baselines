BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."FirstName" IS NULL OR Length(p."FirstName") = 0 THEN True
		ELSE False
	END,
	p."FirstName",
	CASE
		WHEN p."MiddleName" IS NULL OR Length(p."MiddleName") = 0
			THEN True
		ELSE False
	END,
	p."MiddleName",
	p."LastName"
FROM
	"Person" p

