BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'
DECLARE @ps_1 Varchar2(3) -- String
SET     @ps_1 = '%[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :ps_1 ESCAPE '~'

