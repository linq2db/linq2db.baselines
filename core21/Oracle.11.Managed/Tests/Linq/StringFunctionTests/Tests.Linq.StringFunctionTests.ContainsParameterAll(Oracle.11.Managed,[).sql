BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @s_1 Varchar2(7) -- String
SET     @s_1 = '123[456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s_1 LIKE '%[%' ESCAPE '~'

