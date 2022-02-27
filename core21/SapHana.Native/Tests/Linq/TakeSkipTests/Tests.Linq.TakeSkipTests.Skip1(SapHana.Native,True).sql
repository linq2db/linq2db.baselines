BeforeExecute
-- SapHana.Native SapHana
DECLARE @skip  -- Int32
SET     @skip = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
LIMIT 4200000000 OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @skip  -- Int32
SET     @skip = 4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
LIMIT 4200000000 OFFSET :"skip"

