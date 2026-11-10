-- Firebird.4 Firebird4
SELECT DISTINCT
	"t1"."ParentID",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "t1"."ParentID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"t1"."ParentID" = "p"."ParentID" AND "c_1"."ParentID" IS NULL AND
			"c_1"."ChildID" IS NULL
	)

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

