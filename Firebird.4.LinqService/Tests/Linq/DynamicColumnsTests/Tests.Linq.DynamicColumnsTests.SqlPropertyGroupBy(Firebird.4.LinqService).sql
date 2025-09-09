BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."FirstName",
	COUNT(*)
FROM
	"Person" "p"
GROUP BY
	"p"."FirstName"

