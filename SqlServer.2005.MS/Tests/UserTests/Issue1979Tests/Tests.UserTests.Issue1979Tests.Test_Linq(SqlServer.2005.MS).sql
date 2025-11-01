-- SqlServer.2005.MS SqlServer.2005

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Tagging] [t_1]
				INNER JOIN [Tag] [t] ON [t_1].[TagId] = [t].[Id]
		WHERE
			[t].[Name] = N'Visu' AND [t_1].[TaggableId] = [i].[Id]
	)

