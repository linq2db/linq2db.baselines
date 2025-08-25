BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	Coalesce([t1].[FirstName], N'') + N' ' + Coalesce([t1].[LastName], N'')
FROM
	[Issue2434Table] [t1]
ORDER BY
	Coalesce([t1].[FirstName], N'') + N' ' + Coalesce([t1].[LastName], N'')

