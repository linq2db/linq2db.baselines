BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @stringValue VarChar(1) -- String
SET     @stringValue = ' '

SELECT
	CAST(@stringValue AS VARCHAR(1)),
	CHAR_LENGTH(CAST(@stringValue AS VARCHAR(1)))
FROM rdb$database

