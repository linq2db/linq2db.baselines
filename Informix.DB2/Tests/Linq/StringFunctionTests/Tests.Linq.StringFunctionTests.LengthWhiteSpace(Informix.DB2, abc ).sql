BeforeExecute
-- Informix.DB2 Informix
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue::NVarChar(5),
	LENGTH(@stringValue::NVarChar(5) || '.') - 1
FROM table(set{1})

