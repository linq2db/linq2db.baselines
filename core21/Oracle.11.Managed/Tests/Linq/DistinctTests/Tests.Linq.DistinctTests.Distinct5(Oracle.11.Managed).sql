BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1_1 Int32
SET     @Value1_1 = 3

SELECT DISTINCT 
	Nvl(p.Value1, MOD(p.ParentID, 2)), 
	:Value1_1
FROM
	Parent p

