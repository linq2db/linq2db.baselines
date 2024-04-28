BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @s Varchar2(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%n%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @s Varchar2(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%n%' ESCAPE '~'

