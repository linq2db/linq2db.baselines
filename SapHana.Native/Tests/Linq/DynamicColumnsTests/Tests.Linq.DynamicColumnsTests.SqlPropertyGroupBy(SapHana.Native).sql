-- SapHana.Native SapHana
SELECT
	"p"."FirstName",
	COUNT(*)
FROM
	"Person" "p"
GROUP BY
	"p"."FirstName"

