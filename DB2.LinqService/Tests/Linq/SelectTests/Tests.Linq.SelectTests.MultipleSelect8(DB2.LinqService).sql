BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2

SELECT
	("p2"."PersonID" * 2) / CAST(@ID AS Int),
	"p2"."FirstName"
FROM
	"Person" "p2"

