BeforeExecute
-- Firebird.3 Firebird3

WITH CTE_1
(
	"entry_FirstName",
	"entry_ID",
	"entry_LastName",
	"entry_MiddleName",
	"entry_Gender",
	"rn"
)
AS
(
	SELECT
		"x_1"."FirstName",
		"x_1".ID,
		"x_1"."LastName",
		"x_1"."MiddleName",
		"x_1"."Gender",
		"x_1"."rn"
	FROM
		(
			SELECT
				1 as "rn",
				"x"."FirstName",
				"x"."PersonID" as ID,
				"x"."LastName",
				"x"."MiddleName",
				"x"."Gender"
			FROM
				"Person" "x"
		) "x_1"
	WHERE
		"x_1"."rn" = 1
)
SELECT
	"t1"."entry_FirstName",
	"t1"."entry_ID",
	"t1"."entry_LastName",
	"t1"."entry_MiddleName",
	"t1"."entry_Gender",
	"t1"."rn"
FROM
	CTE_1 "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"person_1"."FirstName",
	"person_1"."PersonID",
	"person_1"."LastName",
	"person_1"."MiddleName",
	"person_1"."Gender"
FROM
	"Person" "person_1"
FETCH NEXT 1 ROWS ONLY

