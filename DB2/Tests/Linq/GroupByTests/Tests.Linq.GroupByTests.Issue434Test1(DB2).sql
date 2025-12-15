-- DB2 DB2.LUW DB2LUW
DECLARE @input VarChar(6) -- String
SET     @input = '%test%'

SELECT
	"m_1"."PersonID",
	"d"."PersonID",
	"d"."Diagnosis"
FROM
	"Person" "m_1"
		INNER JOIN "Patient" "d" ON "m_1"."PersonID" = "d"."PersonID"
WHERE
	Lower("m_1"."FirstName") LIKE CAST(@input AS NVarChar(6)) ESCAPE '~'

-- DB2 DB2.LUW DB2LUW
DECLARE @input VarChar(6) -- String
SET     @input = '%test%'

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE CAST(@input AS NVarChar(6)) ESCAPE '~'

