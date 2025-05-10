BeforeExecute
-- SqlServer.2005

UPDATE
	[ext]
SET
	[ext].[TRANS_CHANNEL] = Coalesce([channel].[Trans_Channel], 0),
	[ext].[IDF] = [channel].[Idf]
FROM
	[Issue2815Table1] [ext]
		LEFT JOIN [Issue2815Table2] [source] ON [source].[ISO] = [ext].[SRC_BIC]
		LEFT JOIN [Issue2815Table2] [destination] ON [destination].[ISO] = [ext].[DES_BIC]
		LEFT JOIN [Issue2815Table3] [channel] ON [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = CASE
			WHEN [source].[SEPA] = 1 AND [destination].[SEPA] = 1 THEN CASE
				WHEN ([source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL) AND NOT ([source].[ISO] IS NULL AND [destination].[ISO] IS NOT NULL) AND NOT ([destination].[ISO] IS NULL AND [source].[ISO] IS NOT NULL)
					THEN 0
				ELSE 1
			END
			ELSE 2
		END
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

