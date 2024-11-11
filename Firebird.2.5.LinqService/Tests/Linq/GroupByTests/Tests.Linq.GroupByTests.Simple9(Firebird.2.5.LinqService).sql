BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	NULL
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

