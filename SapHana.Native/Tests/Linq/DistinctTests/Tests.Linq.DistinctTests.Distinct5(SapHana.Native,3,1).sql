-- SapHana.Native SapHana
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", MOD("p"."ParentID", 2)),
	:"Value1"
FROM
	"Parent" "p"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Native SapHana
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", MOD("p"."ParentID", 2)),
	:"Value1"
FROM
	"Parent" "p"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

