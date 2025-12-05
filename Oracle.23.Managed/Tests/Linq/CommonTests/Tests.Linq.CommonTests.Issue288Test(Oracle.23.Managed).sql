-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName" as ID
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(4) -- String
SET     @p = 'John'

SELECT
	p."FirstName" as ID
FROM
	"Person" p
WHERE
	p."FirstName" = :p
FETCH NEXT 1 ROWS ONLY

