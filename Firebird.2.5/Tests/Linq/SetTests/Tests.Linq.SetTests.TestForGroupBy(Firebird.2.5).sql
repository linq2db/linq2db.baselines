BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (2)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (3)

