BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	(("_"."PersonID" = @id OR "_"."PersonID" <= @id) OR "_"."PersonID" = @id)

