BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"e"."FirstName",
	CASE
		WHEN "a_Person"."FirstName" IS NOT NULL AND "a_Person"."MiddleName" IS NOT NULL
			THEN TRUE
		ELSE FALSE
	END,
	"a_Person"."MiddleName"
FROM
	"Person" "e"
		LEFT JOIN "Patient" "a_Patient" ON "e"."PersonID" = "a_Patient"."PersonID"
		LEFT JOIN "Person" "a_Person" ON "a_Patient"."PersonID" = "a_Person"."PersonID"

