BeforeExecute
-- Firebird.3 Firebird3

SELECT
	NULL
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

