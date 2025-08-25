BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"a_PersonDoctor"."FirstName"
FROM
	"Doctor" "d"
		INNER JOIN "Person" "a_PersonDoctor" ON "d"."PersonID" = "a_PersonDoctor"."PersonID"

