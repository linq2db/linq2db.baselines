BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ps VarChar(3) -- String
SET     @ps = '%[%'

SELECT 
	"p"."FirstName", 
	"p"."PersonID", 
	"p"."LastName", 
	"p"."MiddleName", 
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' LIKE @ps ESCAPE '~'

