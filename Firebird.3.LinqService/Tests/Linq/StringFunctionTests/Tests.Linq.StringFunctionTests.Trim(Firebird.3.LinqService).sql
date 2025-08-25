BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND Trim('  ' || "pp"."FirstName" || ' ') = 'John'

