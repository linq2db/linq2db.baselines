BeforeExecute
-- SapHana.Native SapHana
DECLARE @параметр  -- Int32
SET     @параметр = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = :"параметр"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @参数  -- Int32
SET     @参数 = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = :"参数"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @パラメータ  -- Int32
SET     @パラメータ = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = :"パラメータ"

