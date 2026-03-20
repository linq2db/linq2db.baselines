-- Firebird.2.5 Firebird

SELECT
	"o"."ParentID",
	"o"."Value1",
	(
		SELECT FIRST 1
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"o"."ParentID" = "c_1"."ParentID"
		ORDER BY
			"c_1"."ChildID" DESC
	),
	(
		SELECT FIRST 1
			"c_2"."ChildID"
		FROM
			"Child" "c_2"
		WHERE
			"o"."ParentID" = "c_2"."ParentID"
		ORDER BY
			"c_2"."ChildID" DESC
	)
FROM
	"Parent" "o"

