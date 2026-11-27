-- SqlServer.Contained.MS SqlServer.2025
UPDATE
	[ext]
SET
	[ext].[TRANS_CHANNEL] = Coalesce([channel].[Trans_Channel], 1),
	[ext].[IDF] = Coalesce([channel].[Idf], 0)
FROM
	[UpdateFromTarget] [ext]
		LEFT JOIN [UpdateFromIsoLookup] [source] ON [source].[ISO] = [ext].[SRC_BIC]
		LEFT JOIN [UpdateFromIsoLookup] [destination] ON [destination].[ISO] = [ext].[DES_BIC]
		LEFT JOIN [UpdateFromChannelLookup] [channel] ON [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = IIF([source].[SEPA] = 1 AND [destination].[SEPA] = 1, IIF([source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL, 0, 1), 2)
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[SRC_BIC],
	[t1].[DES_BIC],
	[t1].[IDF],
	[t1].[TREA_CENT],
	[t1].[NOT_HANDLED],
	[t1].[TRANS_CHANNEL]
FROM
	[UpdateFromTarget] [t1]
ORDER BY
	[t1].[SRC_BIC],
	[t1].[DES_BIC]

