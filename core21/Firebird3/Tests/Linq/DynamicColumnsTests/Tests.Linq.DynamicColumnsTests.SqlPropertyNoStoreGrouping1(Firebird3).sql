BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."FirstName", 
	Count(*)
FROM
	"Person" "t1"
GROUP BY
	"t1"."FirstName"
ORDER BY
	"t1"."FirstName"

