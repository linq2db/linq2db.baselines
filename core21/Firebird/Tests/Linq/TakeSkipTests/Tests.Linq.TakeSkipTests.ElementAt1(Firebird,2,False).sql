BeforeExecute
-- Firebird

SELECT FIRST 1 SKIP 2 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1

