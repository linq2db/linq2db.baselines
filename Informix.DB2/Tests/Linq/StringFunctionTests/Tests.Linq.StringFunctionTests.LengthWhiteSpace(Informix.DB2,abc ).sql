BeforeExecute
-- Informix.DB2 Informix
DECLARE @stringValue VarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	@stringValue::NVarChar(4),
	4
FROM table(set{1})

