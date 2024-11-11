BeforeExecute
-- Firebird.5 Firebird4

SELECT
	NULL
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

