BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	1 <> "p"."Value1" OR "p"."Value1" IS NULL

