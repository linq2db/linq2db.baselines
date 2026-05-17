-- Firebird.2.5 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT FIRST 3
			"p"."ParentID"
		FROM
			"GrandChild" "p"
	) "p_1"
WHERE
	"c_1"."ParentID" = "p_1"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT FIRST 3 SKIP 12
			"p"."ParentID"
		FROM
			"GrandChild" "p"
	) "p_1"
WHERE
	"c_1"."ParentID" = "p_1"."ParentID"

