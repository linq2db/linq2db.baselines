BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.Key_1
FROM
	( 
		SELECT 
			CASE
				WHEN (
					SELECT 
						Avg(c_1.ParentID)
					FROM
						Child c_1
					WHERE
						selectParam.ParentID = c_1.ParentID
				) > 3
					THEN 't'
				ELSE 'f'
			END as Key_1
		FROM
			Parent selectParam
	) t1
GROUP BY
	t1.Key_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Char(1) -- StringFixedLength
SET     @p1 = 'f'

SELECT 
	underscore.ParentID, 
	underscore.Value1
FROM
	( 
		SELECT 
			CASE
				WHEN (
					SELECT 
						Avg(c_1.ParentID)
					FROM
						Child c_1
					WHERE
						selectParam.ParentID = c_1.ParentID
				) > 3
					THEN 't'
				ELSE 'f'
			END as Key_1, 
			selectParam.ParentID, 
			selectParam.Value1
		FROM
			Parent selectParam
	) underscore
WHERE
	underscore.Key_1 = @p1

