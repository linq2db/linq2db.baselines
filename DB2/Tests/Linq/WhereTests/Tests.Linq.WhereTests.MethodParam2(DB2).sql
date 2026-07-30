-- DB2 DB2.LUW DB2LUW
DECLARE @t Integer(4) -- Int32
SET     @t = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @t

-- DB2 DB2.LUW DB2LUW
DECLARE @t Integer(4) -- Int32
SET     @t = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @t

