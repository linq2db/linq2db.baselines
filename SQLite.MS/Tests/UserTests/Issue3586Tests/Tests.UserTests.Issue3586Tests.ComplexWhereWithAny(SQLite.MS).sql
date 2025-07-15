BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Status],
	[x].[ResourceID],
	[x].[MaterialID],
	[x].[BatchNumber],
	[x].[InfeedAdviceID],
	[x].[Quantity]
FROM
	[InventoryResourceDTO] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [y]
				LEFT JOIN [WmsBatchDTO] [batch] ON [y].[MaterialID] = [batch].[MaterialID] AND ([y].[BatchNumber] = [batch].[BatchNumber] OR [y].[BatchNumber] IS NULL AND [batch].[BatchNumber] IS NULL)
		WHERE
			[y].[Status] = 1 AND [y].[Id] = [x].[Id]
	)

