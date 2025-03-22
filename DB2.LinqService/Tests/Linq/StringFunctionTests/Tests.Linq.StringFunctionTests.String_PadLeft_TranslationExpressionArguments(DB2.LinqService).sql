BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s".ID,
	"s"."FirstName"
FROM
	(
		SELECT
			CASE
				WHEN CHAR_LENGTH("p"."FirstName") < "p"."PersonID" THEN LPAD("p"."FirstName", "p"."PersonID", '.')
				ELSE "p"."FirstName"
			END as "FirstName",
			"p"."PersonID" as ID
		FROM
			"Person" "p"
	) "s"
WHERE
	"s"."FirstName" <> ''

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

