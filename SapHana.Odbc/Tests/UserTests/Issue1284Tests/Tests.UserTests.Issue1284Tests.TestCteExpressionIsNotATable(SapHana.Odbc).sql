-- SapHana.Odbc SapHanaOdbc

WITH "CTE_1"
(
	"entry_ID",
	"entry_FirstName",
	"entry_LastName",
	"entry_MiddleName",
	"entry_Gender"
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
	"x"."ID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	(
		SELECT
			"t1"."entry_ID" as "ID",
			"t1"."entry_FirstName" as "FirstName",
			"t1"."entry_LastName" as "LastName",
			"t1"."entry_MiddleName" as "MiddleName",
			"t1"."entry_Gender" as "Gender"
		FROM
			"CTE_1" "t1"
	) "x"
WHERE
	"x"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

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

