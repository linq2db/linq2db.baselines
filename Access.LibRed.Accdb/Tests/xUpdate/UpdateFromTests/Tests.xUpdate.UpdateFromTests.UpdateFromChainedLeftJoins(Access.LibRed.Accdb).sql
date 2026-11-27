-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	(([UpdateFromTarget] [ext]
		LEFT JOIN [UpdateFromIsoLookup] [source] ON ([source].[ISO] = [ext].[SRC_BIC]))
		LEFT JOIN [UpdateFromIsoLookup] [destination] ON ([destination].[ISO] = [ext].[DES_BIC]))
		LEFT JOIN [UpdateFromChannelLookup] [channel] ON ([channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = CASE
			WHEN [source].[SEPA] AND [destination].[SEPA] THEN CASE
				WHEN [source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL
					THEN 0
				ELSE 1
			END
			ELSE 2
		END)
SET
	[ext].[TRANS_CHANNEL] = CASE
		WHEN [channel].[Trans_Channel] IS NULL THEN 1
		ELSE [channel].[Trans_Channel]
	END,
	[ext].[IDF] = CASE
		WHEN [channel].[Idf] IS NULL THEN 0
		ELSE [channel].[Idf]
	END
WHERE
	[ext].[NOT_HANDLED] = 2 AND [ext].[TRANS_CHANNEL] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

