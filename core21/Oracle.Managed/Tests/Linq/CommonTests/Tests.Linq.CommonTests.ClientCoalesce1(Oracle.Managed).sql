BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	Nvl(p.Value1, :Value1)
FROM
	Parent p

