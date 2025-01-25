BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%[%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%[%' ESCAPE '~'

