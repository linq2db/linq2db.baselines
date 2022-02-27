BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Child" "c_1",
	"GetParentByID"(:"p1") "p"

