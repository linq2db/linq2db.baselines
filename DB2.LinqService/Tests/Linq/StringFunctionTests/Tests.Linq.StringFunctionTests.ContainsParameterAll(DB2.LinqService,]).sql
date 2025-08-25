BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @s VarChar(7) -- String
SET     @s = '123]456'
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%]%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND @s LIKE @toTest ESCAPE '~'

