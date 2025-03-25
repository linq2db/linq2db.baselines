BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	CAST(@stringValue AS VARCHAR(5)),
	CHAR_LENGTH(CAST(@stringValue AS VARCHAR(5)))
FROM rdb$database

