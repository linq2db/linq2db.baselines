-- Firebird.4 Firebird4

SELECT
	MAX("r"."PersonID")
FROM
	"Person" "r"
UNION ALL
SELECT
	"r_1"."PersonID"
FROM
	"Person" "r_1"

