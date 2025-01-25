BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t2".ID,
	"t2"."LastName",
	"t2"."flag"
FROM
	(
		SELECT
			CAST("t1"."PersonID" IN (1, 3) AS smallint) as "flag",
			"t1"."PersonID" as ID,
			"t1"."LastName"
		FROM
			"Person" "t1"
	) "t2"
ORDER BY
	"t2"."flag"

