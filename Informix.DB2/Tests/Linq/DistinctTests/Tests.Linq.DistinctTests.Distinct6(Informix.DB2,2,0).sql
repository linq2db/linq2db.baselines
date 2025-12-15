-- Informix.DB2 Informix
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Nvl(p.Value1, p.ParentID),
	@Value1::Int
FROM
	Parent p

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

