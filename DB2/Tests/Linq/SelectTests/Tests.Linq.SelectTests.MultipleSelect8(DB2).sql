BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	("p2"."PersonID" * 2) / CHAR_LENGTH('22'),
	"p2"."FirstName"
FROM
	"Person" "p2"

