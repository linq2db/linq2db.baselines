-- SQLite.Classic SQLite

SELECT
	[inventory_1].[Id],
	[inventory_1].[ResourceID]
FROM
	[WmsLoadCarrierDTO] [t1]
		LEFT JOIN (
			SELECT
				[inventory].[ResourceID],
				[inventory].[Id]
			FROM
				[InventoryResourceDTO] [inventory]
			UNION ALL
			SELECT
				[r].[Id] as [ResourceID],
				X'00000000000000000000000000000000' as [Id]
			FROM
				[WmsLoadCarrierDTO] [r]
		) [inventory_1] ON [t1].[Id] = [inventory_1].[ResourceID]

