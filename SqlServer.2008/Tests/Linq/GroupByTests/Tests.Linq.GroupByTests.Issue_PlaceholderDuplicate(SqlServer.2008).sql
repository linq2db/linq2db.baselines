BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[t1].[PersonID],
	[t1].[PersonID]
FROM
	[Person] [t1]
GROUP BY
	[t1].[PersonID],
	[t1].[PersonID]
ORDER BY
	[t1].[PersonID]

