BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 1
DECLARE @Value1_1 Integer(4) -- Int32
SET     @Value1_1 = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @ParentID_1 AND p.Value1 = @Value1_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 2

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @ParentID_1 AND p.Value1 IS NULL

