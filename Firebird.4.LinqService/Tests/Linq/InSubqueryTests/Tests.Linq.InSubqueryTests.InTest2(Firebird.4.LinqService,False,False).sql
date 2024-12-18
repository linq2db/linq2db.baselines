BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."GrandChildID"
FROM
	"GrandChild" "c_1"
WHERE
	"c_1"."ParentID" IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."Value1" IS NOT NULL AND ("c_1"."ParentID" = "p"."Value1" AND "c_1"."ParentID" IS NOT NULL AND "p"."Value1" IS NOT NULL OR "c_1"."ParentID" IS NULL AND "p"."Value1" IS NULL)
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

