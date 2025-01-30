BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[r].[PersonID] as [ID],
	[r].[PersonID] as [sort_1]
FROM
	[Person] [r]
GROUP BY
	[r].[PersonID],
	[r].[PersonID]
ORDER BY
	[r].[PersonID]

