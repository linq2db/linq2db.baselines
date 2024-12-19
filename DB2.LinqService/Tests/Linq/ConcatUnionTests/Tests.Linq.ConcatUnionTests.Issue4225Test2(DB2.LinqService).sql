BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender",
	CAST(NULL AS Int),
	CAST(NULL AS NVarChar(255))
FROM
	"Person" "x"
UNION ALL
SELECT
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS Int),
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS Char(1)),
	"x_1"."PersonID",
	"x_1"."Diagnosis"
FROM
	"Patient" "x_1"

