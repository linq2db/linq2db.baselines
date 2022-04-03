BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @ID
FETCH FIRST 1 ROWS ONLY

