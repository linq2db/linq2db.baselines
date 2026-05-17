-- Sybase.Managed Sybase

UPDATE
	[UpdateSubquerySourceTable]
SET
	[FirstName] = (
		SELECT
			(
				SELECT
					[t_1].[FirstName]
			)
		FROM
			[UpdateSubquerySourceTable] [x_1]
				LEFT JOIN [UpdateSubquerySourceTable] [t_1] ON [t_1].[Id] = [x_1].[Id] + 1
		WHERE
			[x_1].[Id] = 1 AND [UpdateSubquerySourceTable].[Id] = [x_1].[Id]
	),
	[LastName] = (
		SELECT
			(
				SELECT
					[t_2].[LastName]
			)
		FROM
			[UpdateSubquerySourceTable] [x_2]
				LEFT JOIN [UpdateSubquerySourceTable] [t_2] ON [t_2].[Id] = [x_2].[Id] + 1
		WHERE
			[x_2].[Id] = 1 AND [UpdateSubquerySourceTable].[Id] = [x_2].[Id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[UpdateSubquerySourceTable] [x]
				LEFT JOIN [UpdateSubquerySourceTable] [t] ON [t].[Id] = [x].[Id] + 1
		WHERE
			[x].[Id] = 1 AND [UpdateSubquerySourceTable].[Id] = [x].[Id]
	)

