BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t.ParentID, 
	t.Value1
FROM
	Parent t

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @param_1 Int32
SET     @param_1 = 1

SELECT 
	t.ParentID, 
	t.Value1
FROM
	Parent t
WHERE
	t.Value1 = :param_1

