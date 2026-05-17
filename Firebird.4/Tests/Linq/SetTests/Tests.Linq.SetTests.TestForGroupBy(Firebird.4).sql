-- Firebird.4 Firebird4

SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (2)

-- Firebird.4 Firebird4

SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (3)

