-- Firebird.5 Firebird4

SELECT
	"gr"."ParentID",
	"gr"."ChildID"
FROM
	"GrandChild" "gr"
GROUP BY
	"gr"."ParentID",
	"gr"."ChildID"

