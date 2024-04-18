BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."GrandChildID"
FROM
	"GrandChild" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."Value1" = "c_1"."ParentID"
	)

