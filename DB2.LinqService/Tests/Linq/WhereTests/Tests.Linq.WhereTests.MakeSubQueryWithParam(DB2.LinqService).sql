BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1
DECLARE @n_1 Integer(4) -- Int32
SET     @n_1 = 1

SELECT
	"p"."PersonID" + @n,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @n_1

