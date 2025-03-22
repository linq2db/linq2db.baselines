BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @stringValue NVarChar(4000) -- String
SET     @stringValue = N'abc '

SELECT
	@stringValue,
	LEN(@stringValue + N'.') - 1

