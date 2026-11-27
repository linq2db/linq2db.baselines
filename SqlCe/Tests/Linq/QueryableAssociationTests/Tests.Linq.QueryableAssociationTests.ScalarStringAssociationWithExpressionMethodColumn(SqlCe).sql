-- SqlCe
SELECT
	[t2].[Id],
	[t1].[ExpressionMethod]
FROM
	[StringAssociationOwner] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[se].[Value] as [ExpressionMethod]
			FROM
				[StringAssociationValue] [se]
			WHERE
				[se].[Id] = [t2].[Id]
		) [t1]

