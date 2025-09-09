BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 2
FETCH NEXT 2 ROWS ONLY

