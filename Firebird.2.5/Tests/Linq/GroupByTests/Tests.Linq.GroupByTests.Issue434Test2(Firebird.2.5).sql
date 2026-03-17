-- Firebird.2.5 Firebird

SELECT
	"m_1"."PersonID",
	"d"."PersonID",
	"d"."Diagnosis"
FROM
	"Person" "m_1"
		INNER JOIN "Patient" "d" ON "m_1"."PersonID" = "d"."PersonID"
WHERE
	Lower("m_1"."FirstName") LIKE '%test%' ESCAPE '~'

-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE '%test%' ESCAPE '~'

