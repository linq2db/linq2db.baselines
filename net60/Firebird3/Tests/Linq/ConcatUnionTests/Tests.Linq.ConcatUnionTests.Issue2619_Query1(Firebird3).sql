BeforeExecute
-- Firebird3 Firebird

SELECT
	"item"."FirstName",
	"item"."PersonID",
	"item"."LastName",
	"item"."MiddleName",
	"item"."Gender"
FROM
	"Person" "item"
UNION
SELECT
	"item_1"."FirstName",
	"item_1"."PersonID",
	"item_1"."LastName",
	"item_1"."MiddleName",
	"item_1"."Gender"
FROM
	"Person" "item_1"

