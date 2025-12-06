-- Firebird.2.5 Firebird

SELECT FIRST 2
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"
WHERE
	"p"."PersonID" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"a_Patient"."PersonID",
	"a_Patient"."Diagnosis"
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"
WHERE
	"p"."PersonID" = 2

