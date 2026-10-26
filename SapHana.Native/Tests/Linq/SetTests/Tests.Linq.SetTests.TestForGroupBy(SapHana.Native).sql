-- SapHana.Native SapHana
SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (2)

-- SapHana.Native SapHana
SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (3)

