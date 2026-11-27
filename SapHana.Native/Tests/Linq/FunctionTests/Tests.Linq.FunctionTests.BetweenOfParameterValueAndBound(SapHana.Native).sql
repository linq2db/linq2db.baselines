-- SapHana.Native SapHana
DECLARE @value Integer -- Int32
SET     @value = 3
DECLARE @low Integer -- Int32
SET     @low = 0

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	:"value" BETWEEN :"low" AND "p"."ParentID"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Native SapHana
DECLARE @value Integer -- Int32
SET     @value = 3
DECLARE @low Integer -- Int32
SET     @low = 0

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	:"value" NOT BETWEEN :"low" AND "p"."ParentID"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

