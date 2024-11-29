BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."PersonID",
	p."FirstName",
	CAST('id=1' AS VarChar(255))
FROM
	"Person" p
WHERE
	p."PersonID" = 1
UNION ALL
SELECT
	p_1."PersonID",
	p_1."FirstName",
	CAST('id=2' AS VarChar(255))
FROM
	"Person" p_1
WHERE
	p_1."PersonID" = 2

