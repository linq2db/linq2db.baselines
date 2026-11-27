-- SqlServer.2016
SELECT
	(
		SELECT TOP (1)
			[a_CaseLog].[Number]
		FROM
			[ColOptCaseLogProperty] [a_CaseLogProperties]
				LEFT JOIN [ColOptCaseLog] [a_CaseLog] ON [a_CaseLogProperties].[CaseLogId] = [a_CaseLog].[Id]
		WHERE
			[x].[Id] = [a_CaseLogProperties].[PropertyId]
	),
	(
		SELECT TOP (1)
			[a_Incident].[EventNumber]
		FROM
			[ColOptIncidentProperty] [a_IncidentProperties]
				LEFT JOIN [ColOptIncident] [a_Incident] ON [a_IncidentProperties].[IncidentId] = [a_Incident].[Id]
		WHERE
			[x].[Id] = [a_IncidentProperties].[PropertyId]
	)
FROM
	[ColOptProperties] [x]
WHERE
	[x].[Id] IN (1, 2)

