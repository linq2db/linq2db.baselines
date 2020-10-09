BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT FIRST 1 SKIP @n 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1

