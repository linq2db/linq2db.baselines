BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"gr"."ParentID",
	"gr"."ChildID"
FROM
	"GrandChild" "gr"
GROUP BY
	"gr"."ParentID",
	"gr"."ChildID"

