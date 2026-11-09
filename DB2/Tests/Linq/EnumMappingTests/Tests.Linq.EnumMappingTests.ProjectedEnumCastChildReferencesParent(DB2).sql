-- DB2 DB2.LUW DB2LUW
SELECT
	"m_1"."Gender",
	"d"."PersonID"
FROM
	(
		SELECT DISTINCT
			"p"."Gender"
		FROM
			"Person" "p"
	) "m_1"
		INNER JOIN "Person" "d" ON "d"."Gender" = "m_1"."Gender"

-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

