-- DB2 DB2.LUW DB2LUW
DECLARE @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij Integer(4) -- Int32
SET     @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."PersonID" = @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij

