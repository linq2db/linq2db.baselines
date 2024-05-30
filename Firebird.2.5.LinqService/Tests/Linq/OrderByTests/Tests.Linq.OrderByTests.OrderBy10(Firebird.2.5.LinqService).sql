BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	Mod("x"."ChildID", 2),
	"x"."ChildID" DESC

