BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[Issue4364_BaseThing] [b]
		INNER JOIN [Issue4364_Interaction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [Issue4364_Person] [p] ON [i].[PersonId] = [p].[Id]
ORDER BY
	[b].[Id]

