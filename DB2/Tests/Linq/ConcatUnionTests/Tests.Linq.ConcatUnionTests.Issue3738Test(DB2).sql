BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	'I-' || "x"."PersonID",
	"x"."FirstName"
FROM
	"Person" "x"
UNION ALL
SELECT
	CAST(NULL AS NVarChar(8168)),
	'QUASI-' || "x_1"."FirstName"
FROM
	"Person" "x_1"

