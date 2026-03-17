-- Firebird.5 Firebird4

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	Mod("x"."ChildID", 2),
	"x"."ChildID" DESC

