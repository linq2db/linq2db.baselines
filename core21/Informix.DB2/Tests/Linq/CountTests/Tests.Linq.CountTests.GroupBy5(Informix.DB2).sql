BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Max(t1.ChildID), 
	(
		SELECT 
			Count(*)
		FROM
			Child keyParam
		WHERE
			t1.ParentID = keyParam.ParentID AND keyParam.ChildID > 20
	), 
	(
		SELECT 
			Count(*)
		FROM
			Child keyParam_1
		WHERE
			t1.ParentID = keyParam_1.ParentID AND keyParam_1.ChildID > 10
	)
FROM
	Child t1
GROUP BY
	t1.ParentID

