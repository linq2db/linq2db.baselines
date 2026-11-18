-- Firebird.2.5 Firebird
SELECT DISTINCT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p_1"
		WHERE
			"p"."ParentID" = "p_1"."ParentID" AND (
				SELECT FIRST 1
					"c_1"."ParentID"
				FROM
					"Child" "c_1"
				WHERE
					"c_1"."ParentID" = "p_1"."ParentID"
				ORDER BY
					"c_1"."ChildID"
			) IS NULL AND
			(
				SELECT FIRST 1
					"c_2"."ChildID"
				FROM
					"Child" "c_2"
				WHERE
					"c_2"."ParentID" = "p_1"."ParentID"
				ORDER BY
					"c_2"."ChildID"
			) IS NULL
	)

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

