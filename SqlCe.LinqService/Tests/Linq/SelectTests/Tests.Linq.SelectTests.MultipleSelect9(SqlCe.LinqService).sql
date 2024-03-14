BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * @ID) / 2 as [c1],
	[p2].[FirstName]
FROM
	[Person] [p2]

