BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 100
					"v"."ParentID"
				FROM
					"Parent" "v"
			) "t1"
		WHERE
			"c_1"."ParentID" = "t1"."ParentID"
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

