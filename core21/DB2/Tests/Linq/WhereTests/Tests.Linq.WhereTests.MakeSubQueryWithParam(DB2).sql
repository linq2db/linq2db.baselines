BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT 
	"p_1"."PersonID", 
	"p_1"."FirstName"
FROM
	( 
		SELECT 
			"p"."PersonID" + @n as "PersonID", 
			"p"."FirstName"
		FROM
			"Person" "p"
	) "p_1"
WHERE
	"p_1"."PersonID" = 2

