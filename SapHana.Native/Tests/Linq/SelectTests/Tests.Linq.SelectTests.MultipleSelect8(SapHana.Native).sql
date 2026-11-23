-- SapHana.Native SapHana
SELECT
	CAST("p2"."PersonID" * 2 / 2 AS Integer),
	"p2"."FirstName"
FROM
	"Person" "p2"

