-- Firebird.5 Firebird4

SELECT
	Substring("t1"."MiddleName" from 1 for 200)
FROM
	"Person" "t1"

