BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName" as ID
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Varchar2(4) -- String
SET     @ID = 'John'

SELECT
	p."FirstName" as ID
FROM
	"Person" p
WHERE
	p."FirstName" = :ID
FETCH NEXT 1 ROWS ONLY

