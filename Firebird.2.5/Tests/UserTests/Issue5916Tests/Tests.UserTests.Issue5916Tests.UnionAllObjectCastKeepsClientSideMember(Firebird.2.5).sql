-- Firebird.2.5 Firebird
SELECT
	CAST('p_' AS VARCHAR(2)),
	"p"."PersonID",
	CAST('X' AS VARCHAR(1)),
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > 2
UNION ALL
SELECT
	CAST('q_' AS VARCHAR(2)),
	"p_1"."PersonID",
	CAST('X' AS VARCHAR(1)),
	"p_1"."FirstName"
FROM
	"Person" "p_1"
WHERE
	"p_1"."PersonID" <= 2

-- Firebird.2.5 Firebird
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

