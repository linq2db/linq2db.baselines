-- Firebird.5 Firebird4
DECLARE @value Guid
SET     @value = X'6F9619FF8B86D011B42D00C04FC964FF'

SELECT
	CAST(@value AS BINARY(16))
FROM rdb$database

