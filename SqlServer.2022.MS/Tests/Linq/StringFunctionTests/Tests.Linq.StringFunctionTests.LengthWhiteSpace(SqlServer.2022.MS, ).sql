BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @stringValue NVarChar(4000) -- String
SET     @stringValue = N' '

SELECT
	@stringValue,
	LEN(@stringValue + N'.') - 1

