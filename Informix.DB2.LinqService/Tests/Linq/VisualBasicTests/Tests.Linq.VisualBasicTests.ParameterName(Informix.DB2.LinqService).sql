BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @VBLocal_id Integer(4) -- Int32
SET     @VBLocal_id = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @VBLocal_id

