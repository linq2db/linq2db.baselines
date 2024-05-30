BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"gr"."ParentID",
	"gr"."ChildID"
FROM
	"GrandChild" "gr"
GROUP BY
	"gr"."ParentID",
	"gr"."ChildID"

