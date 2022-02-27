BeforeExecute
-- Firebird

SELECT
	"person_1"."PersonID",
	"g_1"."PersonID"
FROM
	"Person" "person_1"
		LEFT JOIN "Patient" "g_1" ON "person_1"."PersonID" = "g_1"."PersonID"
ORDER BY
	"person_1"."MiddleName"

