BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."sort_1",
	"t1"."sort_1"
FROM
	(
		SELECT
			"r"."PersonID" as "sort_1"
		FROM
			"Person" "r"
		GROUP BY
			"r"."PersonID",
			"r"."PersonID"
	) "t1"
ORDER BY
	"t1"."sort_1"
FETCH NEXT 100 ROWS ONLY

