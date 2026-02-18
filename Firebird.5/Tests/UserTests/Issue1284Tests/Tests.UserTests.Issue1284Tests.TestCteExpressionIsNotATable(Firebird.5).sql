-- Firebird.5 Firebird4

WITH CTE_1
(
	ID,
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		"person_1"."PersonID",
		"person_1"."FirstName",
		"person_1"."LastName",
		"person_1"."MiddleName",
		"person_1"."Gender"
	FROM
		"Person" "person_1"
)
SELECT
	"x"."FirstName",
	"x".ID,
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	CTE_1 "x"
WHERE
	"x".ID = 1

-- Firebird.5 Firebird4

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."PersonID" = 1

