-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE 'joh%' ESCAPE '~' AND p."PersonID" = 1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") NOT LIKE 'joh%' ESCAPE '~' AND
	p."PersonID" = 1

