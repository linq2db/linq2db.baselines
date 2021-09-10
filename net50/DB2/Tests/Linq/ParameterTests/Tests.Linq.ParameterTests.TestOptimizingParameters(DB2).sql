BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @id_1 Integer(4) -- Int32
SET     @id_1 = 1
DECLARE @id_2 Integer(4) -- Int32
SET     @id_2 = 1

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	(("_"."PersonID" = @id OR "_"."PersonID" <= @id_1) OR "_"."PersonID" = @id_2)

