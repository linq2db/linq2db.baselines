BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p5].[PersonID] * @Length) / 2,
	[p5].[FirstName]
FROM
	[Person] [p5]

