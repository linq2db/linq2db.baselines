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
WHERE
	'123' || CASE
		WHEN LENGTH(p."FirstName") < 6::Int THEN LPAD(p."FirstName", 6::Int, '*')
		ELSE p."FirstName"
	END = '123**John' AND
	p."PersonID" = 1

