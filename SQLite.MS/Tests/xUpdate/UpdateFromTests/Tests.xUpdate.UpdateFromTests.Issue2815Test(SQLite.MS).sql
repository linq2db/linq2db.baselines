BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2815Table1]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2815Table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2815Table2]
(
	[ISO]  INTEGER NOT NULL,
	[SEPA] Bit     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2815Table3]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2815Table3]
(
	[TreasuryCenter] INTEGER NOT NULL,
	[BIC]            INTEGER NOT NULL,
	[Sepa]           INTEGER NOT NULL,
	[Trans_Channel]  INTEGER NOT NULL,
	[Idf]            INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2815Table3]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2815Table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2815Table1]

