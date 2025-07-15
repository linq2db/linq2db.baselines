BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	COUNT(*)
FROM
	"Person" "p"
GROUP BY
	"p"."FirstName"

