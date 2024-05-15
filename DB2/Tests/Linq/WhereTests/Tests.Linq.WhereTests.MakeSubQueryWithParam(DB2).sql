BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	("p"."PersonID" + CAST(@n AS Int)) - 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + CAST(@n AS Int) = 2

