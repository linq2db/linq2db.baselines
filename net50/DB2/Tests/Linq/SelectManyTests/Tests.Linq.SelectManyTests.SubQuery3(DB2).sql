BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	"p1"."PersonID",
	"p2"."FirstName"
FROM
	"Person" "p1"
		CROSS JOIN "Person" "p2"
WHERE
	"p1"."PersonID" = "p2"."PersonID" AND "p2"."PersonID" = @id

