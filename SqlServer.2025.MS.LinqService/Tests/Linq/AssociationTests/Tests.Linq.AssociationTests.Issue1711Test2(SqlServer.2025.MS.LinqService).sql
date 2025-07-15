BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Relationship1711] [r]
		WHERE
			[r].[Deleted] = 0 AND [r].[EntityId] = [t].[Id]
	)

