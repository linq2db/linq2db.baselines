BeforeExecute
-- Firebird3 Firebird

SELECT
	"y_5"."ParentID",
	"y_5"."Value1",
	"y_3"."ParentID",
	"y_3"."Value1",
	"yid"."ParentID",
	"yid"."Value1",
	"y_1"."ParentID",
	"y_1"."Value1",
	"y_2"."ParentID",
	"y_2"."Value1",
	"y_4"."ParentID",
	"y_4"."Value1"
FROM
	"Parent" "y_5"
		LEFT JOIN "Parent" "yid" ON "y_5"."ParentID" = "yid"."ParentID"
		LEFT JOIN "Parent" "y_1" ON "y_5"."ParentID" = "y_1"."ParentID"
		LEFT JOIN "Parent" "y_2" ON "y_5"."ParentID" = "y_2"."ParentID"
		LEFT JOIN "Parent" "y_3" ON "y_5"."ParentID" = Coalesce("y_3"."Value1", 1)
		LEFT JOIN "Parent" "y_4" ON "y_5"."ParentID" = "y_4"."ParentID"

