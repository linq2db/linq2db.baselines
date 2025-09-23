BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	LEN([p].[FirstName] + N'.') - 1 + @Length
FROM
	[Person] [p]

