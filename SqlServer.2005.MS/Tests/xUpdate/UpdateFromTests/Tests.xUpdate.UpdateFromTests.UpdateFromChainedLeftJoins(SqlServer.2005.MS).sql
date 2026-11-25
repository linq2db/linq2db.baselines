-- SqlServer.2005.MS SqlServer.2005
UPDATE
	[ext]
SET
	[ext].[TRANS_CHANNEL] = Coalesce([channel].[Trans_Channel], 1),
	[ext].[IDF] = Coalesce([channel].[Idf], 0)
FROM
	[UpdateFromTarget] [ext]
		LEFT JOIN [UpdateFromIsoLookup] [source] ON [source].[ISO] = [ext].[SRC_BIC]
		LEFT JOIN [UpdateFromIsoLookup] [destination] ON [destination].[ISO] = [ext].[DES_BIC]
		LEFT JOIN [UpdateFromChannelLookup] [channel] ON [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = CASE
			WHEN [source].[SEPA] = 1 AND [destination].[SEPA] = 1 THEN CASE
				WHEN [source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL
					THEN 0
				ELSE 1
			END
			ELSE 2
		END
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

-- SqlServer.2005.MS SqlServer.2005
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

