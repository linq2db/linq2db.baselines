BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level1]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3757Level1]
(
	[ID]     INTEGER       NOT NULL,
	[ValS]   NVarChar(255)     NULL,
	[ValB]   Bit               NULL,
	[ValInt] INTEGER           NULL,

	CONSTRAINT [PK_Issue3757Level1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3757Level2]
(
	[ID]       INTEGER       NOT NULL,
	[ParentId] INTEGER       NOT NULL,
	[ValS]     NVarChar(255)     NULL,
	[ValB]     Bit               NULL,
	[ValInt]   INTEGER           NULL,

	CONSTRAINT [PK_Issue3757Level2] PRIMARY KEY ([ID])
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	[Issue3757Level1] [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[l1].[ID],
	[l1].[ValB],
	[l1].[ValS],
	[l1].[ValInt]
FROM
	[Issue3757Level1] [l1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level1]

