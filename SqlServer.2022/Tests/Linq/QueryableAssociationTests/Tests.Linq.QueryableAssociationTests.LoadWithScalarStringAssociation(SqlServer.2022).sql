-- SqlServer.2022
SELECT
	[t1].[Id],
	(
		SELECT TOP (1)
			[se].[Value]
		FROM
			[StringAssociationValue] [se]
		WHERE
			[se].[Id] = [t1].[Id]
	),
	(
		SELECT TOP (1)
			[a_Association].[Value]
		FROM
			[StringAssociationValue] [a_Association]
		WHERE
			[a_Association].[Id] = [t1].[Id]
	)
FROM
	[StringAssociationOwner] [t1]

