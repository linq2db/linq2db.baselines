BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

SELECT
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID
FETCH NEXT 2 ROWS ONLY

