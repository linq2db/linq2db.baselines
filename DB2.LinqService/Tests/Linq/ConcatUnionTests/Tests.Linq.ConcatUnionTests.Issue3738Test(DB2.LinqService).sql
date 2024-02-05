BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	'I-' || RTrim(Char("x"."PersonID")),
	"x"."FirstName"
FROM
	"Person" "x"
UNION ALL
SELECT
	Cast(NULL as NVarChar(255)),
	'QUASI-' || "x_1"."FirstName"
FROM
	"Person" "x_1"

