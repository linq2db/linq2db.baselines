BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
FETCH NEXT 2 ROWS ONLY

