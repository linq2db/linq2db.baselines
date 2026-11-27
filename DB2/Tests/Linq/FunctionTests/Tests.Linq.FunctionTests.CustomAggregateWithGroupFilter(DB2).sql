-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."Key_1",
	"g_2"."Sum_2",
	"g_2"."Length_1",
	"g_2"."KeyLength"
FROM
	(
		SELECT
			"g_1"."FirstName" as "Key_1",
			SUM("g_1"."PersonID") as "Sum_1",
			SUM("g_1"."PersonID") as "Sum_2",
			SUM(CHARACTER_LENGTH("g_1"."LastName",CODEUNITS32)) as "Length_1",
			SUM("g_1"."PersonID" + CHARACTER_LENGTH("g_1"."FirstName",CODEUNITS32)) as "KeyLength"
		FROM
			"Person" "g_1"
		GROUP BY
			"g_1"."FirstName"
	) "g_2"
WHERE
	"g_2"."Sum_1" NOT BETWEEN 2 AND 3

