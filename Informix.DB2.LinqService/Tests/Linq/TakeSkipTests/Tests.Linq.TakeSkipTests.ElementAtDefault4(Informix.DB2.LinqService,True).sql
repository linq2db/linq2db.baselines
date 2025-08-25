BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @n Integer(4) -- Int32
SET     @n = 300000

SELECT SKIP @n FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 1

