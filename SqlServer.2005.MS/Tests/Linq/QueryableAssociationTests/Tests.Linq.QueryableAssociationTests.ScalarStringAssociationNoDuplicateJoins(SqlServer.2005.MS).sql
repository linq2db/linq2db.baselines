-- SqlServer.2005.MS SqlServer.2005
SELECT
	[x_1].[Id],
	[x_1].[Association]
FROM
	(
		SELECT
			(
				SELECT TOP (1)
					[a_Association].[Value]
				FROM
					[StringAssociationValue] [a_Association]
				WHERE
					[a_Association].[Id] = [x].[Id]
			) as [Association],
			[x].[Id]
		FROM
			[StringAssociationOwner] [x]
	) [x_1]
WHERE
	[x_1].[Association] IS NOT NULL AND [x_1].[Association] <> N'unknown'

