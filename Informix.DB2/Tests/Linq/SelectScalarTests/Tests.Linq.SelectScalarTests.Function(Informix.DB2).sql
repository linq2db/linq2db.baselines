BeforeExecute
-- Informix.DB2 Informix
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT FIRST 1
	c_1.ChildID || ',' || @text::NVarChar(3)
FROM
	Child c_1

