BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" <> 0

