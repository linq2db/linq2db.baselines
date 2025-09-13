BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[x].[Id],
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) = ('US', 'CA') OR ([x].[Country], [x].[State]) = ('US', 'NY')

