BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND Lower(:s) LIKE '%[%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND Lower(:s) NOT LIKE '%[%' ESCAPE '~'

