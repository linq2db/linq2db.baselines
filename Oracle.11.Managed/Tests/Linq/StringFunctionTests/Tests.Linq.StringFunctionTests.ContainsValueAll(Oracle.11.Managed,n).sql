-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123n456' LIKE '%n%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123n456' NOT LIKE '%n%' ESCAPE '~'

