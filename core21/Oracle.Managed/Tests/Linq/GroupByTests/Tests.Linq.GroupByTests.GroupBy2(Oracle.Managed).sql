BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Key_1
FROM
	( 
		SELECT 
			Nvl(selectParam.Value1, c_1.ChildID) as Key_1
		FROM
			Parent selectParam
				INNER JOIN Child c_1 ON selectParam.ParentID = c_1.ParentID
	) t1
GROUP BY
	t1.Key_1

