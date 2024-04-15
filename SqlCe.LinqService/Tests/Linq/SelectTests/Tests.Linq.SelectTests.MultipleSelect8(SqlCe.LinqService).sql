BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * 2) / @ID as [c1],
	[p2].[FirstName]
FROM
	[Person] [p2]

