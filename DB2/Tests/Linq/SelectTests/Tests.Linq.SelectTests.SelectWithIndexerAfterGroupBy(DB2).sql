-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Key_1",
	"x"."Index_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY "g_1"."PersonID" DESC) - 1 as "Index_1",
			"g_1"."PersonID" as "Key_1"
		FROM
			"Person" "g_1"
	) "x"
WHERE
	"x"."Index_1" > 0
ORDER BY
	"x"."Key_1" DESC

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

