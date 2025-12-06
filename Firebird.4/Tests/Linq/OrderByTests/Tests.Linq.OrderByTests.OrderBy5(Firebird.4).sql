-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	Mod("t1"."ChildID", 2),
	"t1"."ChildID"

