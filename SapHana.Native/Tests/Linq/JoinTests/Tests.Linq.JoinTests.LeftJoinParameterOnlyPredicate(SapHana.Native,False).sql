-- SapHana.Native SapHana
SELECT
	"p"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON 1 = 0

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

