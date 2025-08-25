BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'
DECLARE @ps Varchar2(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :ps ESCAPE '~'

