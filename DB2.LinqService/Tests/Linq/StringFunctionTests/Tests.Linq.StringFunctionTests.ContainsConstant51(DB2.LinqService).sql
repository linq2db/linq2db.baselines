BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ps VarChar(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' LIKE @ps ESCAPE '~'

