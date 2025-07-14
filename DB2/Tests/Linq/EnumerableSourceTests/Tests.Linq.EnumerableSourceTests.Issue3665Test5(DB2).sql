BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"y"."item"
FROM
	"Person" "x",
	(VALUES
		('M'), ('F'), ('U'), ('O')
	) "y"("item")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

