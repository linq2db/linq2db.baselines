-- SqlServer.2025.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[r].[PersonID],
	[r].[PersonID]
FROM
	[Person] [r]
ORDER BY
	[r].[PersonID]

