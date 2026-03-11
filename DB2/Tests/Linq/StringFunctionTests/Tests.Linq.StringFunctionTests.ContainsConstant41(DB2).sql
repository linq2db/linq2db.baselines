-- DB2 DB2.LUW DB2LUW
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps VarChar(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND @s LIKE @ps ESCAPE '~'

