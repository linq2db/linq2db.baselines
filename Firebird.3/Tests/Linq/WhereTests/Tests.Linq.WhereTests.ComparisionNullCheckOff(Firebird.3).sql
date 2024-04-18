BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" <> 1 AND "p"."Value1" IS NOT NULL

