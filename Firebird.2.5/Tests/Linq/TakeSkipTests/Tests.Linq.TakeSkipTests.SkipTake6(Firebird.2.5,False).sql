-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1",
	(
		SELECT FIRST 3
			"p"."ParentID"
		FROM
			"GrandChild" "p"
	) "p_1"
WHERE
	"t1"."ParentID" = "p_1"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1",
	(
		SELECT FIRST 3 SKIP 12
			"p"."ParentID"
		FROM
			"GrandChild" "p"
	) "p_1"
WHERE
	"t1"."ParentID" = "p_1"."ParentID"

