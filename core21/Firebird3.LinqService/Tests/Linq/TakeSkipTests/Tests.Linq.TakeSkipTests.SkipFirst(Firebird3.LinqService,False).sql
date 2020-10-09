BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1 SKIP 1 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1

