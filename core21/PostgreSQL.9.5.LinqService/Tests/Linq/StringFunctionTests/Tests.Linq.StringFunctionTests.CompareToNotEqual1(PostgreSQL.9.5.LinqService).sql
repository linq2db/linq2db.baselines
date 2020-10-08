BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(CASE
		WHEN p."FirstName" > 'Jo' THEN 1
		WHEN p."FirstName" = 'Jo' THEN 0
		ELSE -1
	END <> 0 OR CASE
		WHEN p."FirstName" > 'Jo' THEN 1
		WHEN p."FirstName" = 'Jo' THEN 0
		ELSE -1
	END IS NULL) AND
	p."PersonID" = 1

