-- Firebird.2.5 Firebird
SELECT
	"g_2"."FirstName",
	CASE
		WHEN "g_2"."InRange" BETWEEN 1 AND 3 THEN '1'
		ELSE '0'
	END
FROM
	(
		SELECT
			"g_1"."FirstName",
			SUM("g_1"."PersonID") as "Sum_1",
			MAX("g_1"."PersonID") as "InRange"
		FROM
			"Person" "g_1"
		GROUP BY
			"g_1"."FirstName"
	) "g_2"
WHERE
	"g_2"."Sum_1" NOT BETWEEN 2 AND 3

-- Firebird.2.5 Firebird
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

