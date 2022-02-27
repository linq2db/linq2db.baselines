BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"GetParentByID"(:"p1") "p"

