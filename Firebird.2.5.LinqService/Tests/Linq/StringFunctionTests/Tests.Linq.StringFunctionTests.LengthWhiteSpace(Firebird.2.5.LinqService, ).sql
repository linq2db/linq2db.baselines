BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @stringValue VarChar(1) -- String
SET     @stringValue = ' '
DECLARE @stringValue_1 Integer -- Int32
SET     @stringValue_1 = 1

SELECT
	CAST(@stringValue AS VARCHAR(1)),
	CAST(@stringValue_1 AS Int)
FROM rdb$database

