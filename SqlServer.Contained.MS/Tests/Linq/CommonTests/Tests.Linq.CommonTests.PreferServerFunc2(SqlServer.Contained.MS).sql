BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length
FROM
	[Person] [p]

