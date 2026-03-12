-- Firebird.4 Firebird4

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID" DESC,
	Mod("x"."ChildID", 2)

