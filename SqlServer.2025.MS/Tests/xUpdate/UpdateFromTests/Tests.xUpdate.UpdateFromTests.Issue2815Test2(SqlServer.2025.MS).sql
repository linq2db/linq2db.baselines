BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

UPDATE
	[ext]
SET
	[ext].[TRANS_CHANNEL] = Coalesce([channel].[Trans_Channel], 0),
	[ext].[IDF] = [channel].[Idf]
FROM
	[Issue2815Table1] [ext]
		LEFT JOIN [Issue2815Table2] [source] ON [source].[ISO] = [ext].[SRC_BIC]
		LEFT JOIN [Issue2815Table2] [destination] ON [destination].[ISO] = [ext].[DES_BIC]
		LEFT JOIN [Issue2815Table3] [channel] ON [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = IIF([source].[SEPA] = 1 AND [destination].[SEPA] = 1, IIF([source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL, 0, 1), 2)
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

