-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[r].[PersonID]
FROM
	[Person] [r]
ORDER BY
	[r].[PersonID]

