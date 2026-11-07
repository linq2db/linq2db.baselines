-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"GetParentByID"(:"p") "p"

