BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Varchar2(4) -- String
SET     @p = 'John'

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" = :p AND ROWNUM <= 1

