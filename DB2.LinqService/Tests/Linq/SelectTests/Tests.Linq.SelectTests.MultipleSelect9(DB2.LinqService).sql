BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	("p5"."PersonID" * CHAR_LENGTH('22')) / 2,
	"p5"."FirstName"
FROM
	"Person" "p5"

