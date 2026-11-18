-- Firebird.2.5 Firebird
SELECT DISTINCT
	"t1"."ParentID",
	"t1"."ParentID_1",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID",
			(
				SELECT FIRST 1
					"c_1"."ParentID"
				FROM
					"Child" "c_1"
				WHERE
					"c_1"."ParentID" = "p"."ParentID"
				ORDER BY
					"c_1"."ChildID"
			) as "ParentID_1",
			(
				SELECT FIRST 1
					"c_2"."ChildID"
				FROM
					"Child" "c_2"
				WHERE
					"c_2"."ParentID" = "p"."ParentID"
				ORDER BY
					"c_2"."ChildID"
			) as "ChildID"
		FROM
			"Parent" "p"
	) "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p_1"
		WHERE
			"t1"."ParentID" = "p_1"."ParentID" AND "t1"."ParentID_1" IS NULL AND
			"t1"."ChildID" IS NULL
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

