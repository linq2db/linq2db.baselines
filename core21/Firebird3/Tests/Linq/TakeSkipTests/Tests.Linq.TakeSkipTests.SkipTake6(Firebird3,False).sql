BeforeExecute
-- Firebird3 Firebird

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
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

BeforeExecute
-- Firebird3 Firebird

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
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

