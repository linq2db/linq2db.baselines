BeforeExecute
-- Firebird.4 Firebird4
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '
DECLARE @stringValue_1 Integer -- Int32
SET     @stringValue_1 = 5

SELECT
	CAST(@stringValue AS VARCHAR(5)),
	CAST(@stringValue_1 AS Int)
FROM rdb$database

