BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	selectParam."ChildID"
FROM
	"GrandChild" selectParam
GROUP BY
	selectParam."ParentID" + 1,
	selectParam."ChildID"

