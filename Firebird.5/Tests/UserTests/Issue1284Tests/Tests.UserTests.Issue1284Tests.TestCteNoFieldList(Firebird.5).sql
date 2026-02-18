-- Firebird.5 Firebird4

WITH "cte"
(
	"entry_FirstName",
	"entry_ID",
	"entry_LastName",
	"entry_MiddleName",
	"entry_Gender"
)
AS
(
	SELECT
		"x"."FirstName",
		"x"."PersonID",
		"x"."LastName",
		"x"."MiddleName",
		"x"."Gender"
	FROM
		"Person" "x"
)
SELECT
	"t1"."entry_FirstName",
	"t1"."entry_ID",
	"t1"."entry_LastName",
	"t1"."entry_MiddleName",
	"t1"."entry_Gender"
FROM
	"cte" "t1"

-- Firebird.5 Firebird4

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"

