-- Firebird.3 Firebird3

SELECT
	"a"."ParentID"
FROM
	"Parent" "a"
		INNER JOIN "Child" "t" ON EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "c_1"
			WHERE
				"c_1"."ChildID" = "t"."ChildID" AND "a"."ParentID" = "c_1"."ParentID"
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

-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

