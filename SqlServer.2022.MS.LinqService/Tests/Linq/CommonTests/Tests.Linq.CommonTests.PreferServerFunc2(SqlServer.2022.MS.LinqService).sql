BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	LEN([p].[FirstName] + N'.') - 1 + @Length
FROM
	[Person] [p]

