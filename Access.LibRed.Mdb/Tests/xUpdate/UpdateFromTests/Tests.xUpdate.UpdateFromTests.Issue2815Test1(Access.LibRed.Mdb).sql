-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[Issue2815Table1] [u],
	(([Issue2815Table1] [ext]
		LEFT JOIN [Issue2815Table2] [source] ON ([source].[ISO] = [ext].[SRC_BIC]))
		LEFT JOIN [Issue2815Table2] [destination] ON ([destination].[ISO] = [ext].[DES_BIC]))
		LEFT JOIN [Issue2815Table3] [channel] ON ([channel].[Id] = [u].[Id] AND [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = IIF([source].[SEPA] AND [destination].[SEPA], IIF([source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL, 0, 1), 2))
SET
	[u].[TRANS_CHANNEL] = IIF([channel].[Trans_Channel] IS NULL, 1, [channel].[Trans_Channel]),
	[u].[IDF] = [channel].[Idf]
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

