-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(p."PersonID") as "c1"
FROM
	"Person" p
WHERE
	p."PersonID" IN (1, 2)
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(p."PersonID") as "c1"
FROM
	"Person" p
WHERE
	1 = 0
FETCH NEXT 2 ROWS ONLY

