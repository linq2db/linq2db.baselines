-- SqlServer.Contained SqlServer.2025
SELECT
	[i].[Id]
FROM
	[TaggableIssue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TaggingBase] [t_1]
				INNER JOIN [TaggingTag] [t] ON [t_1].[TagId] = [t].[Id]
		WHERE
			[t].[Name] = N'Visu' AND [t_1].[TaggableId] = [i].[Id]
	)

