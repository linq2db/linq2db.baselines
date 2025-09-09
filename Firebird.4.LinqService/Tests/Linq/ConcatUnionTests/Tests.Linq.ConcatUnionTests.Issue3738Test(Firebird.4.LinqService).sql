BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	'I-' || "x"."PersonID",
	"x"."FirstName"
FROM
	"Person" "x"
UNION ALL
SELECT
	NULL,
	'QUASI-' || "x_1"."FirstName"
FROM
	"Person" "x_1"

