BeforeExecute
-- Firebird

SELECT
	Substring("t1"."MiddleName" from 1 for 200)
FROM
	"Person" "t1"

