BeforeExecute
-- Firebird

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(1 = 0 OR "p"."ParentID" = 2)

