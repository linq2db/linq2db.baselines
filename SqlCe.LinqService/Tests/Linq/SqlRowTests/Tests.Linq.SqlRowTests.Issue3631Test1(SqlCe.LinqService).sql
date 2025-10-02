BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[Id],
	[x].[Country],
	[x].[State] as [State_1]
FROM
	[Issue3631Table] [x]
WHERE
	[x].[Country] = 'US' AND [x].[State] = 'CA' OR [x].[Country] = 'US' AND [x].[State] = 'NY'

