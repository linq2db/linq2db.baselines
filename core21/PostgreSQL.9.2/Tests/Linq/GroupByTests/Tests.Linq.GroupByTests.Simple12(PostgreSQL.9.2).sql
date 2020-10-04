BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	"selectParam"."ChildID"
FROM
	"GrandChild" "selectParam"
GROUP BY
	"selectParam"."ParentID" + 1,
	"selectParam"."ChildID"

