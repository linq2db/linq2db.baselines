BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int32
SET     @p1 = 0
DECLARE @Value1_1 Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Nvl(p.Value1, p.ParentID + :p1),
	:Value1_1
FROM
	Parent p

