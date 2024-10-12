BeforeExecute
-- SqlServer.2008
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p2].[PersonID] * @Length) / 2,
	[p2].[FirstName]
FROM
	[Person] [p2]

