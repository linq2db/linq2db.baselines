BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND TRIM(LEADING FROM ('  ' || "pp"."FirstName" || ' ')) = 'John '

