BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%' || Replace(Replace(Replace('n', '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%' || Replace(Replace(Replace('n', '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

