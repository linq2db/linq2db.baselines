BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ps Varchar2(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' LIKE :ps ESCAPE '~'

