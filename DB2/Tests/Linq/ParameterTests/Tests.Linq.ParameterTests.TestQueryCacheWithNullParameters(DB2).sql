-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	1 = 0

-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

