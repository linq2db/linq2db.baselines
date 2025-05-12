BeforeExecute
-- Informix.DB2 Informix
DECLARE @stringValue VarChar(1) -- String
SET     @stringValue = ' '

SELECT
	@stringValue::NVarChar(1),
	1
FROM table(set{1})

