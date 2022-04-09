BeforeExecute
-- Informix.DB2 Informix
DECLARE @testValue Integer(4) -- Int32
SET     @testValue = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.Value1 = @testValue

