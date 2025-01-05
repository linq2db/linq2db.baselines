BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2815Table1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2815Table1]
(
	[SRC_BIC]       INTEGER NOT NULL,
	[DES_BIC]       INTEGER NOT NULL,
	[IDF]           INTEGER NOT NULL,
	[TREA_CENT]     INTEGER NOT NULL,
	[NOT_HANDLED]   INTEGER NOT NULL,
	[TRANS_CHANNEL] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2815Table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2815Table2]
(
	[ISO]  INTEGER NOT NULL,
	[SEPA] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2815Table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2815Table3]
(
	[TreasuryCenter] INTEGER NOT NULL,
	[BIC]            INTEGER NOT NULL,
	[Sepa]           INTEGER NOT NULL,
	[Trans_Channel]  INTEGER NOT NULL,
	[Idf]            INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Issue2815Table1]
SET
	[TRANS_CHANNEL] = [channel].[Trans_Channel],
	[IDF] = [channel].[Idf]
FROM
	[Issue2815Table2] [source],
	[Issue2815Table2] [destination],
	[Issue2815Table3] [channel]
WHERE
	[Issue2815Table1].[NOT_HANDLED] = 2 AND
	[Issue2815Table1].[TRANS_CHANNEL] IS NULL AND
	[source].[ISO] = [Issue2815Table1].[SRC_BIC] AND
	[destination].[ISO] = [Issue2815Table1].[DES_BIC] AND
	[channel].[TreasuryCenter] = [Issue2815Table1].[TREA_CENT] AND
	[channel].[BIC] = [Issue2815Table1].[SRC_BIC] AND
	[channel].[Sepa] = CASE
		WHEN [source].[SEPA] AND [destination].[SEPA] THEN CASE
			WHEN [source].[ISO] = [destination].[ISO] OR [source].[ISO] IS NULL AND [destination].[ISO] IS NULL
				THEN 0
			ELSE 1
		END
		ELSE 2
	END

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2815Table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2815Table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2815Table1]

