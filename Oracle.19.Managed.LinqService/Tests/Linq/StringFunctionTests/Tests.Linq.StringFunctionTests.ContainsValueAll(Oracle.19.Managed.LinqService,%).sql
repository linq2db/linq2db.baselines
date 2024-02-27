BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123%456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%' || Replace(Replace(Replace('%', '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123%456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%' || Replace(Replace(Replace('%', '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'

