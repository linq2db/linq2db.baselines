-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[r].[PersonID],
	[r].[PersonID]
FROM
	[Person] [r]
GROUP BY
	[r].[PersonID],
	[r].[PersonID]
ORDER BY
	[r].[PersonID]

