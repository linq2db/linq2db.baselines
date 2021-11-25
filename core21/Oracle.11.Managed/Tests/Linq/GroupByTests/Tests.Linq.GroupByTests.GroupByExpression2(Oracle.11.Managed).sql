BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	selectParam."ChildID",
	Round(AVG(selectParam."ParentID"), 27)
FROM
	"Child" selectParam
GROUP BY
	selectParam."ChildID"

