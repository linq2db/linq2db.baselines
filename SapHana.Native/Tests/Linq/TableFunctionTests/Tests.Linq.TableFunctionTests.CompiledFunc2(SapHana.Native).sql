-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1"
		CROSS JOIN "GetParentByID"(:"p") "p"

