BeforeExecute
-- Firebird3 Firebird

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	("p"."Value1" IS NULL OR 1 <> "p"."Value1")

