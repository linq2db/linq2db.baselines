-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 2

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID::BigInt = @id

