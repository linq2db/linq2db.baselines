-- Sybase.Managed Sybase

UPDATE
	[UpdateSubquerySourceTable]
SET
	[FirstName] = (
		SELECT
			[t].[FirstName]
		FROM
			[UpdateSubquerySourceTable] [t]
		WHERE
			[t].[Id] = [UpdateSubquerySourceTable].[Id] + 1
	),
	[LastName] = (
		SELECT
			[t_1].[LastName]
		FROM
			[UpdateSubquerySourceTable] [t_1]
		WHERE
			[t_1].[Id] = [UpdateSubquerySourceTable].[Id] + 1
	)
WHERE
	[UpdateSubquerySourceTable].[Id] = 1

