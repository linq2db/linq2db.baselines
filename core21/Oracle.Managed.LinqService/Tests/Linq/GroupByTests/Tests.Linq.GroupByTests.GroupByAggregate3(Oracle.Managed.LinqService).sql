BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Key_1
FROM
	( 
		SELECT 
			CASE
				WHEN (
					SELECT 
						Round(AVG(c_1.ParentID), 27)
					FROM
						Child c_1
					WHERE
						selectParam.ParentID = c_1.ParentID
				) > 3D
					THEN 1
				ELSE 0
			END as Key_1
		FROM
			Parent selectParam
	) t1
GROUP BY
	t1.Key_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int16
SET     @p1 = 0

SELECT 
	underscore.ParentID, 
	underscore.Value1
FROM
	( 
		SELECT 
			CASE
				WHEN (
					SELECT 
						Round(AVG(c_1.ParentID), 27)
					FROM
						Child c_1
					WHERE
						selectParam.ParentID = c_1.ParentID
				) > 3D
					THEN 1
				ELSE 0
			END as Key_1, 
			selectParam.ParentID, 
			selectParam.Value1
		FROM
			Parent selectParam
	) underscore
WHERE
	underscore.Key_1 = :p1

