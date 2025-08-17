BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"e"."FirstName",
	CAST("a_Person"."PersonID" IS NOT NULL AND "a_Person"."LastName" IS NOT NULL AS smallint),
	"a_Person"."LastName"
FROM
	"Person" "e"
		LEFT JOIN "Patient" "a_Patient" ON "e"."PersonID" = "a_Patient"."PersonID"
		LEFT JOIN "Person" "a_Person" ON "a_Patient"."PersonID" = "a_Person"."PersonID"

