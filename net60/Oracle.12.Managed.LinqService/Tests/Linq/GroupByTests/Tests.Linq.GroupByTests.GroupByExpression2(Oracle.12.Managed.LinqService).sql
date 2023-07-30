BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	selectParam."ChildID",
	Round(AVG(selectParam."ParentID"), 27)
FROM
	"Child" selectParam
GROUP BY
	selectParam."ChildID"

