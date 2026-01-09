-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName"
FROM
	"Person" p
UNION ALL
SELECT
	p_1."FirstName" || CAST('/' AS VarChar(4000)) || p_1."LastName"
FROM
	"Person" p_1

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName" || CAST('/' AS VarChar(4000)) || p."LastName"
FROM
	"Person" p
UNION ALL
SELECT
	p_1."FirstName"
FROM
	"Person" p_1

