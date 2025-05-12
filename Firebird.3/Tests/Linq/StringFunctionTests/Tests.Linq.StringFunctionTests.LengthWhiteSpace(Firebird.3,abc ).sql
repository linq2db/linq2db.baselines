BeforeExecute
-- Firebird.3 Firebird3
DECLARE @stringValue VarChar(4) -- String
SET     @stringValue = 'abc '
DECLARE @stringValue_1 Integer -- Int32
SET     @stringValue_1 = 4

SELECT
	CAST(@stringValue AS VARCHAR(4)),
	CAST(@stringValue_1 AS Int)
FROM rdb$database

