BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	MAX("r"."PersonID")
FROM
	"Person" "r"
UNION ALL
SELECT
	"r_1"."PersonID"
FROM
	"Person" "r_1"

