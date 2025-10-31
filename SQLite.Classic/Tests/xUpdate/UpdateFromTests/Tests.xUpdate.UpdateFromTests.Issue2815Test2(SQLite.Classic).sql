-- SQLite.Classic SQLite

UPDATE
	[Issue2815Table1]
SET
	[TRANS_CHANNEL] = Coalesce([channel].[Trans_Channel], 1),
	[IDF] = Coalesce([channel].[Idf], 0)
FROM
	[Issue2815Table1] [ext]
		LEFT JOIN [Issue2815Table2] [source] ON [source].[ISO] = [ext].[SRC_BIC]
		LEFT JOIN [Issue2815Table2] [destination] ON [destination].[ISO] = [ext].[DES_BIC]
		LEFT JOIN [Issue2815Table3] [channel] ON [channel].[TreasuryCenter] = [ext].[TREA_CENT] AND [channel].[BIC] = [ext].[SRC_BIC] AND [channel].[Sepa] = CASE
			WHEN [source].[SEPA] AND [destination].[SEPA] THEN CASE
				WHEN [source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL
					THEN 0
				ELSE 1
			END
			ELSE 2
		END
WHERE
	[ext].[NOT_HANDLED] = 2 AND
	[ext].[TRANS_CHANNEL] IS NULL AND
	[Issue2815Table1].[SRC_BIC] = [ext].[SRC_BIC] AND
	[Issue2815Table1].[DES_BIC] = [ext].[DES_BIC] AND
	[Issue2815Table1].[IDF] = [ext].[IDF] AND
	[Issue2815Table1].[TREA_CENT] = [ext].[TREA_CENT] AND
	[Issue2815Table1].[NOT_HANDLED] = [ext].[NOT_HANDLED] AND
	([Issue2815Table1].[TRANS_CHANNEL] = [ext].[TRANS_CHANNEL] OR [Issue2815Table1].[TRANS_CHANNEL] IS NULL AND [ext].[TRANS_CHANNEL] IS NULL)

-- SQLite.Classic SQLite

SELECT
	[t1].[SRC_BIC],
	[t1].[DES_BIC],
	[t1].[IDF],
	[t1].[TREA_CENT],
	[t1].[NOT_HANDLED],
	[t1].[TRANS_CHANNEL]
FROM
	[Issue2815Table1] [t1]
ORDER BY
	[t1].[SRC_BIC],
	[t1].[DES_BIC]

