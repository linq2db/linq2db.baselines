BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	("p"."PersonID" + @n) - 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + @n = 2

