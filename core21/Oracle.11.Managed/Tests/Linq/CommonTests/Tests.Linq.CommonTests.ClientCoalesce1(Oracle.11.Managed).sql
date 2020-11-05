BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	Nvl(p.Value1, :Value1)
FROM
	Parent p

