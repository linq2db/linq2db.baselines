-- SqlServer.2008
SELECT
	[t1].[Id],
	(
		SELECT TOP (1)
			[se].[Value]
		FROM
			[StringAssociationValue] [se]
		WHERE
			[se].[Id] = [t1].[Id]
	)
FROM
	[StringAssociationOwner] [t1]

