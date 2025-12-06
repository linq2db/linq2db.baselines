-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID" DESC,
	Mod("x"."ChildID", 2)

