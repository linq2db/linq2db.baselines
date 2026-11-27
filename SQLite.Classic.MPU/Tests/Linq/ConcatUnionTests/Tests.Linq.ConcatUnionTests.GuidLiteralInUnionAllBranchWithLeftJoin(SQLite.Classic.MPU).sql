-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[inventory_1].[Id],
	[inventory_1].[ResourceID]
FROM
	[GuidUnionCarrier] [t1]
		LEFT JOIN (
			SELECT
				[inventory].[ResourceID],
				[inventory].[Id]
			FROM
				[GuidUnionResource] [inventory]
			UNION ALL
			SELECT
				[r].[Id] as [ResourceID],
				X'00000000000000000000000000000000' as [Id]
			FROM
				[GuidUnionCarrier] [r]
		) [inventory_1] ON [t1].[Id] = [inventory_1].[ResourceID]

