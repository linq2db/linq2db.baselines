BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1 AND "p"."Value1" = 1
FETCH NEXT 1 ROWS ONLY

