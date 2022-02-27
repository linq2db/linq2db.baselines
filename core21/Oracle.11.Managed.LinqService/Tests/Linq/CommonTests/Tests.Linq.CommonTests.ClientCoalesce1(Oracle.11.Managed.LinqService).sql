BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int32
SET     @p1 = 100

SELECT
	Nvl(p.Value1, :p1)
FROM
	Parent p

