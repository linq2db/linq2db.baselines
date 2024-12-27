BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[t1].[PersonID] as [key_1],
	[t1].[PersonID] as [sort_1]
FROM
	[Person] [t1]
GROUP BY
	[t1].[PersonID],
	[t1].[PersonID]
ORDER BY
	[t1].[PersonID]

