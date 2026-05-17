-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 300000

SELECT SKIP @skip FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 1

