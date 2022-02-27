BeforeExecute
-- Firebird3 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	"Parent" "p"
WHERE
	"p"."ParentID" = "c_1"."ParentID" AND ("p"."Value1" IS NULL OR "p"."Value1" NOT IN (123))

