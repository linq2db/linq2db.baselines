-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[Id],
	[g_2].[Status],
	[g_2].[GroupStatus],
	[g_2].[OptimizationMaxLevel],
	[g_2].[AdditionalField1],
	[g_2].[AdditionalField2],
	[g_2].[AdditionalField3],
	[g_2].[Id_1],
	[g_2].[Nr],
	[g_2].[IsSrm],
	[g_2].[OutOfOrder],
	[g_2].[Max_1],
	(
		SELECT
			COUNT(*)
		FROM
			[ChannelDTO] [c_1]
		WHERE
			[c_1].[Status] = 0 AND [c_1].[AisleID] = [g_2].[Id]
	)
FROM
	(
		SELECT
			MAX([ss].[DepthCoordinate]) as [Max_1],
			[g_1].[Id],
			[g_1].[Status],
			[g_1].[GroupStatus],
			[g_1].[OptimizationMaxLevel],
			[g_1].[AdditionalField1],
			[g_1].[AdditionalField2],
			[g_1].[AdditionalField3],
			[rp].[Id] as [Id_1],
			[rp].[Nr],
			[rp].[IsSrm],
			[rp].[OutOfOrder]
		FROM
			[AisleDTO] [g_1]
				INNER JOIN [RefResPointAisleDTO] [refrpa] ON [g_1].[Id] = [refrpa].[AisleId]
				INNER JOIN [WmsResourcePointDTO] [rp] ON [refrpa].[ResourcePointId] = [rp].[Id]
				INNER JOIN [StorageShelfDTO] [ss] ON [g_1].[Id] = [ss].[AisleID]
		WHERE
			[g_1].[Status] <> 1 AND
			[g_1].[GroupStatus] <> 1 AND
			[g_1].[OptimizationMaxLevel] > 0 AND
			[rp].[IsSrm] AND
			NOT [rp].[OutOfOrder]
		GROUP BY
			[g_1].[Id],
			[g_1].[Status],
			[g_1].[GroupStatus],
			[g_1].[OptimizationMaxLevel],
			[g_1].[AdditionalField1],
			[g_1].[AdditionalField2],
			[g_1].[AdditionalField3],
			[rp].[Id],
			[rp].[Nr],
			[rp].[IsSrm],
			[rp].[OutOfOrder]
	) [g_2]

