BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID",
	Mod("x"."ChildID", 2)

