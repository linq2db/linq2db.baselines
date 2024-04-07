BeforeExecute
-- Informix.DB2 Informix

SELECT
	selectParam.ChildID,
	Avg(selectParam.ParentID)
FROM
	Child selectParam
GROUP BY
	selectParam.ChildID

