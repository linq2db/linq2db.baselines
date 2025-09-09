BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	Mod("x"."ChildID", 2),
	"x"."ChildID"

