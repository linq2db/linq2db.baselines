BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t.ParentID, 
	t.Value1
FROM
	Parent t

BeforeExecute
-- Informix.DB2 Informix
DECLARE @param_1 Integer(4) -- Int32
SET     @param_1 = 1

SELECT 
	t.ParentID, 
	t.Value1
FROM
	Parent t
WHERE
	t.Value1 = @param_1

