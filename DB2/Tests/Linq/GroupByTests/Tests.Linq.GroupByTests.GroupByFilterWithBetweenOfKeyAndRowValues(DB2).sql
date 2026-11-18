-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."FirstName",
	CAST("g_2"."FirstName" BETWEEN 'A' AND 'Jo' AS smallint),
	"g_2"."RowsInRange"
FROM
	(
		SELECT
			"g_1"."FirstName",
			SUM("g_1"."PersonID") as "Sum_1",
			COUNT(CASE
				WHEN "g_1"."PersonID" BETWEEN 3 AND 4 THEN 1
				ELSE NULL
			END) as "RowsInRange"
		FROM
			"Person" "g_1"
		GROUP BY
			"g_1"."FirstName"
	) "g_2"
WHERE
	"g_2"."Sum_1" NOT BETWEEN 2 AND 2

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

