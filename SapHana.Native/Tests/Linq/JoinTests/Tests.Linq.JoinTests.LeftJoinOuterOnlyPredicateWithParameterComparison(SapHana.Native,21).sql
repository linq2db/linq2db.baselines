-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 21

SELECT
	"c_1"."ChildID",
	"p"."ParentID"
FROM
	"Child" "c_1"
		LEFT JOIN "Parent" "p" ON "p"."Value1" = "c_1"."ParentID" AND "c_1"."ChildID" <> :"id"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

