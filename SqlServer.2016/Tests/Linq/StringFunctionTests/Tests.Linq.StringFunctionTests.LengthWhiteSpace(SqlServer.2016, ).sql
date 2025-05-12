BeforeExecute
-- SqlServer.2016
DECLARE @stringValue NVarChar(4000) -- String
SET     @stringValue = N' '

SELECT
	@stringValue,
	LEN(@stringValue + N'.') - 1

