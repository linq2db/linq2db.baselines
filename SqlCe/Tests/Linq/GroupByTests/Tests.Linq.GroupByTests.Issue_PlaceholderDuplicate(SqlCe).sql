-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[r].[PersonID] as [ID]
FROM
	[Person] [r]
ORDER BY
	[r].[PersonID]

