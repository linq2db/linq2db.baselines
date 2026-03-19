-- Firebird.5 Firebird4

SELECT DISTINCT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender",
	"u"."FirstName",
	"u"."PersonID",
	"u"."LastName",
	"u"."MiddleName",
	"u"."Gender",
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender",
	"e_1"."FirstName",
	"e_1".ID,
	"e_1"."LastName",
	"e_1"."MiddleName",
	"e_1"."Gender",
	EXISTS(
		SELECT
			*
		FROM
			"Person" "tg"
		WHERE
			"t"."PersonID" = "tg"."PersonID" AND "tg"."FirstName" = 'John'
	)
FROM
	"Person" "t1"
		LEFT JOIN "Patient" "a_Patient" ON "t1"."PersonID" = "a_Patient"."PersonID"
		LEFT JOIN "Person" "t" ON "t1"."PersonID" = "t"."PersonID" AND "t"."FirstName" <> 'Nameless One'
		LEFT JOIN "Person" "u" ON "t1"."PersonID" = "u"."PersonID"
		LEFT JOIN LATERAL (
			SELECT
				"e"."FirstName",
				"e"."PersonID" as ID,
				"e"."LastName",
				"e"."MiddleName",
				"e"."Gender"
			FROM
				"Person" "e"
			WHERE
				"u"."PersonID" = "e"."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) "e_1" ON 1=1
WHERE
	"a_Patient"."Diagnosis" <> 'Immortality' OR "a_Patient"."Diagnosis" IS NULL
ORDER BY
	"u"."PersonID"

