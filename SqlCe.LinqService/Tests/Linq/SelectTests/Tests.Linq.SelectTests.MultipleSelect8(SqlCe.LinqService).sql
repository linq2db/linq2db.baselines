BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p2].[PersonID] * 2) / @Length as [c1],
	[p2].[FirstName]
FROM
	[Person] [p2]

