-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @p
FETCH NEXT 1 ROWS ONLY

