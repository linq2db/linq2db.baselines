BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(p."PersonID")
FROM
	"Person" p
WHERE
	p."PersonID" IN (1, 2) AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(p."PersonID")
FROM
	"Person" p
WHERE
	1 = 0

