BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND (TRIM(TRAILING FROM '  ' || "pp"."FirstName" || ' ')) = '  John'

