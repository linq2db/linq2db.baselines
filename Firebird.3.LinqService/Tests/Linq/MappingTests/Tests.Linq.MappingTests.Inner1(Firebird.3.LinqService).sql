BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
FETCH NEXT 1 ROWS ONLY

