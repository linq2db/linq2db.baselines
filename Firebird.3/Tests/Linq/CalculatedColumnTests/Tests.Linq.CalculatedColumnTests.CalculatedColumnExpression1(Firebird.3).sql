-- Firebird.3 Firebird3

SELECT
	Substring("t1"."MiddleName" from 1 for 200)
FROM
	"Person" "t1"

