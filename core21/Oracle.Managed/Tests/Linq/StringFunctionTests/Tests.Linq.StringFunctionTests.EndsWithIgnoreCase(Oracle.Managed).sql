BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE '%john' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	Lower(p."FirstName") NOT LIKE '%john' ESCAPE '~' AND
	p."PersonID" = 1

