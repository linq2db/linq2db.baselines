BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" <> 1 OR "p"."Value1" IS NULL

