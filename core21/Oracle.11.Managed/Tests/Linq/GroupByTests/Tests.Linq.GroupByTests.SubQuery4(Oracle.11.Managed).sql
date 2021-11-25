BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	selectParam."ChildID" + 1,
	Sum(selectParam."ParentID")
FROM
	"Child" selectParam
GROUP BY
	selectParam."ChildID" + 1

