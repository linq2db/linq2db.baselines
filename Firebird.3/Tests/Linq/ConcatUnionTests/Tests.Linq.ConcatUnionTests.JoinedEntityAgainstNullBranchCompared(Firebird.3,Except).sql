-- Firebird.3 Firebird3
SELECT DISTINCT
	"t1"."ParentID",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "t1"."ParentID"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"t1"."ParentID" = "p"."ParentID" AND "c_1"."ParentID" IS NULL AND
			"c_1"."ChildID" IS NULL
	)

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

