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
			[SqlPropertyAssociationRelation] [a_relationship]
		WHERE
			[t].[Id] = [a_relationship].[EntityId]
	)

