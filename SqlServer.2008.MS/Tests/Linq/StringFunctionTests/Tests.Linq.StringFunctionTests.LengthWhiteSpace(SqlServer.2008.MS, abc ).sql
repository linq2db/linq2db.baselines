BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @stringValue NVarChar(4000) -- String
SET     @stringValue = N' abc '

SELECT
	@stringValue,
	LEN(@stringValue + N'.') - 1

