-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123]]456' LIKE '%]]%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123]]456' NOT LIKE '%]]%' ESCAPE '~'

