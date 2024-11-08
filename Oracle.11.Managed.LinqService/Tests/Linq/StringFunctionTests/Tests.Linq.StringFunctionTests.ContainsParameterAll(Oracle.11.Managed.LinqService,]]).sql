BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @s Varchar2(8) -- String
SET     @s = '123]]456'
DECLARE @toTest Varchar2(4) -- String
SET     @toTest = '%]]%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

