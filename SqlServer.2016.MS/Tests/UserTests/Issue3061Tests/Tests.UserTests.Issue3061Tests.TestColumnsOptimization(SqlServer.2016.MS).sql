-- SqlServer.2016.MS SqlServer.2016

SELECT
	(
		SELECT TOP (1)
			[a_CaseLog].[Number]
		FROM
			[CaseLogProperty] [a_CaseLogProperties]
				LEFT JOIN [CaseLog] [a_CaseLog] ON [a_CaseLogProperties].[CaseLogId] = [a_CaseLog].[Id]
		WHERE
			[x].[Id] = [a_CaseLogProperties].[PropertyId]
	),
	(
		SELECT TOP (1)
			[a_Incident].[EventNumber]
		FROM
			[IncidentProperty] [a_IncidentProperties]
				LEFT JOIN [Incident] [a_Incident] ON [a_IncidentProperties].[IncidentId] = [a_Incident].[Id]
		WHERE
			[x].[Id] = [a_IncidentProperties].[PropertyId]
	)
FROM
	[Properties] [x]
WHERE
	[x].[Id] IN (1, 2)

