-- Informix.DB2 Informix
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	@token::NVarChar(2)
FROM
	Parent p
WHERE
	p.ParentID = 1

