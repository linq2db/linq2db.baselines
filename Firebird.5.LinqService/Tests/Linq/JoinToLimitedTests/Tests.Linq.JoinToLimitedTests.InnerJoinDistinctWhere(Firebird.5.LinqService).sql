BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "o"
		CROSS JOIN LATERAL (
			SELECT DISTINCT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "o"."ParentID"
		) "c_2"

