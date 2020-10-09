BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @defValue Int32
SET     @defValue = 10

SELECT 
	Nvl(Min(t1.ParentID), :defValue)
FROM
	Parent t1

