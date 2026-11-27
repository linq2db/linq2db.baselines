-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t].[Id]
FROM
	[SqlPropertyAssociationEntity] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SqlPropertyAssociationRelation] [r]
		WHERE
			[r].[Deleted] = 0 AND [r].[EntityId] = [t].[Id]
	)

