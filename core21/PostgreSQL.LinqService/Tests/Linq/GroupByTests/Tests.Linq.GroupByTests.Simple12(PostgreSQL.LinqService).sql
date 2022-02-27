BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	"selectParam"."ChildID"
FROM
	"GrandChild" "selectParam"
GROUP BY
	"selectParam"."ParentID" + 1,
	"selectParam"."ChildID"

