BeforeExecute
-- Firebird.5 Firebird4
DECLARE @stringValue VarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	CAST(@stringValue AS VARCHAR(4)),
	CHAR_LENGTH(CAST(@stringValue AS VARCHAR(4)))
FROM rdb$database

