BeforeExecute
-- Firebird3 Firebird

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	("p"."Value1" IS NULL OR "p"."Value1" NOT IN (123))

