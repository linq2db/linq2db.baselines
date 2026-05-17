-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

