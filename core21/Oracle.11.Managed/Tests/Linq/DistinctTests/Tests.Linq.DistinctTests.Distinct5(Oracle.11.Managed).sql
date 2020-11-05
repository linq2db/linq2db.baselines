BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Nvl(p.Value1, MOD(p.ParentID, 2)),
	:Value1
FROM
	Parent p

