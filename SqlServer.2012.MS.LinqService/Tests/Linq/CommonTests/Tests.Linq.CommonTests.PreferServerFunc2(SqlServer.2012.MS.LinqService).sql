BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	LEN([p].[FirstName] + N'.') - 1 + @Length
FROM
	[Person] [p]

