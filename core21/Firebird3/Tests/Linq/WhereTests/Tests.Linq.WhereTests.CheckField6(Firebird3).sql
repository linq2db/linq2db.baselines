BeforeExecute
-- Firebird3 Firebird

SELECT
	"p_1"."Value1",
	"p_1"."Value1" * 100,
	"p_1"."ParentID"
FROM
	"Parent" "p_1"
WHERE
	"p_1"."ParentID" = 1 AND "p_1"."Value1" * 100 > 0

