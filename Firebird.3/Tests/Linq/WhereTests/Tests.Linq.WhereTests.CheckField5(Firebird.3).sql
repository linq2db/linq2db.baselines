BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."Value1",
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" + 1 = 2 AND "p"."ParentID" = 1

