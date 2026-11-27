-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id],
	[x].[Status],
	[x].[ResourceID],
	[x].[MaterialID],
	[x].[BatchNumber],
	[x].[InfeedAdviceID],
	[x].[Quantity]
FROM
	[AnyJoinInventory] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[AnyJoinInventory] [y]
				LEFT JOIN [AnyJoinBatch] [batch] ON [y].[MaterialID] = [batch].[MaterialID] AND ([y].[BatchNumber] = [batch].[BatchNumber] OR [y].[BatchNumber] IS NULL AND [batch].[BatchNumber] IS NULL)
		WHERE
			[y].[Status] = 1 AND [y].[Id] = [x].[Id]
	)

