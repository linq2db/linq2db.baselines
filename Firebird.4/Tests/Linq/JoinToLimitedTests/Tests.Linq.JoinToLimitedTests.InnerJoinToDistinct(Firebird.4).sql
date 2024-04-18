BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"o"."ParentID",
	"o"."Value1",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "o"
		CROSS JOIN LATERAL (
			SELECT DISTINCT
				"cg"."ParentID",
				"cg"."ChildID"
			FROM
				"Child" "cg"
			WHERE
				"o"."ParentID" = "cg"."ParentID"
		) "t1"

