BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @s1 NVarChar(4000) -- String
SET     @s1 = N'0 ' + char(0) + N' '' 0'

SELECT
	@s1

