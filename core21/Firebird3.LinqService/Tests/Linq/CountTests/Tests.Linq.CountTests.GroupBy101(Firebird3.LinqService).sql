BeforeExecute
-- Firebird3 Firebird

SELECT 
	Count(*)
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

