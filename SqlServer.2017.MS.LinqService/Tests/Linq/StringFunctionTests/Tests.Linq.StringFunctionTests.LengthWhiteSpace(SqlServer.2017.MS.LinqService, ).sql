BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @stringValue NVarChar(4000) -- String
SET     @stringValue = N' '

SELECT
	@stringValue,
	LEN(@stringValue + N'.') - 1

