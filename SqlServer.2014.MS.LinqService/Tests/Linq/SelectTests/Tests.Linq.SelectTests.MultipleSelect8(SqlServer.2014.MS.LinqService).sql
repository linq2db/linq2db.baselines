BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p2].[PersonID] * 2) / @Length,
	[p2].[FirstName]
FROM
	[Person] [p2]

