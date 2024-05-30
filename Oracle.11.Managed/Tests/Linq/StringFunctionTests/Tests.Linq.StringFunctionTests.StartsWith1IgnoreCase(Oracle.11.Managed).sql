BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE 'joh%' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") NOT LIKE 'joh%' ESCAPE '~' AND
	p."PersonID" = 1

