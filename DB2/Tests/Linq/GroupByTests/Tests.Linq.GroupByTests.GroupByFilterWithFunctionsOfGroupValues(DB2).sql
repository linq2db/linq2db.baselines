-- DB2 DB2.LUW DB2LUW
SELECT
	CHARACTER_LENGTH("g_2"."FirstName",CODEUNITS32),
	CHARACTER_LENGTH("g_2"."MaxLength",CODEUNITS32),
	"g_2"."KeyRange"
FROM
	(
		SELECT
			"g_1"."FirstName",
			SUM("g_1"."PersonID") as "Sum_1",
			MAX("g_1"."LastName") as "MaxLength",
			CAST("g_1"."FirstName" BETWEEN 'A' AND 'K' AS smallint) as "KeyRange"
		FROM
			"Person" "g_1"
		GROUP BY
			"g_1"."FirstName"
	) "g_2"
WHERE
	"g_2"."Sum_1" NOT BETWEEN 2 AND 3

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

