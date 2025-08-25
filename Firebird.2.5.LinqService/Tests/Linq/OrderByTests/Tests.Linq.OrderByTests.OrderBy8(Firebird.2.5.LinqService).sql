BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID",
	Mod("x"."ChildID", 2)

