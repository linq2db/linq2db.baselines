BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3757Level1]
(
	[ID]     INTEGER       NOT NULL,
	[ValS]   NVarChar(255)     NULL,
	[ValB]   Bit               NULL,
	[ValInt] INTEGER           NULL,

	CONSTRAINT [PK_Issue3757Level1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TypedProperty NVarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	[m_1].[ID],
	[m_1].[ValS],
	[d].[ID],
	[d].[ValB],
	[d].[ValInt]
FROM
	(
		SELECT DISTINCT
			[l1].[ID],
			[l1].[ValS]
		FROM
			[Issue3757Level1] [l1]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Issue3757Level2] [c_1]
				WHERE
					[l1].[ID] = [c_1].[ParentId] AND [l1].[ValS] LIKE @TypedProperty ESCAPE '~' AND
					[l1].[ValS] IS NOT NULL
			)
	) [m_1]
		INNER JOIN [Issue3757Level2] [d] ON [m_1].[ID] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TypedProperty NVarChar(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	[it].[ID],
	[it].[ValB],
	[it].[ValS],
	[it].[ValInt]
FROM
	[Issue3757Level1] [it]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Issue3757Level2] [c_1]
		WHERE
			[it].[ID] = [c_1].[ParentId] AND [it].[ValS] LIKE @TypedProperty ESCAPE '~' AND
			[it].[ValS] IS NOT NULL
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3757Level1]

