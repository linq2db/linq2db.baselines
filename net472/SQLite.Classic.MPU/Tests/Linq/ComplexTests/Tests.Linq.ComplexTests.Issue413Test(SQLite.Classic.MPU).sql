BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [T1]
(
	[InstrumentId]         INTEGER       NOT NULL,
	[InstrumentCode]       NVarChar(255)     NULL,
	[CreateDate]           DateTime2     NOT NULL,
	[SourceInstrumentCode] NVarChar(255)     NULL,

	CONSTRAINT [PK_T1] PRIMARY KEY ([InstrumentId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [T2]
(
	[InstrumentId] INTEGER NOT NULL,
	[IndexId]      INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [T3]
(
	[InstrumentId] INTEGER NOT NULL,
	[IndexId]      INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO [T3]
(
	[InstrumentId],
	[IndexId]
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO [T3]
(
	[InstrumentId],
	[IndexId]
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO [T3]
(
	[InstrumentId],
	[IndexId]
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO [T2]
(
	[InstrumentId],
	[IndexId]
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId  -- Int32
SET     @IndexId = 1

INSERT INTO [T2]
(
	[InstrumentId],
	[IndexId]
)
VALUES
(
	@InstrumentId,
	@IndexId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate  -- DateTime
SET     @CreateDate = '2020-02-28 17:54:55.123'
DECLARE @SourceInstrumentCode NVarChar(7) -- String
SET     @SourceInstrumentCode = 'NOTNULL'

INSERT INTO [T1]
(
	[InstrumentId],
	[InstrumentCode],
	[CreateDate],
	[SourceInstrumentCode]
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @InstrumentId  -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate  -- DateTime
SET     @CreateDate = '2020-02-28 17:54:55.123'
DECLARE @SourceInstrumentCode NVarChar -- String
SET     @SourceInstrumentCode = NULL

INSERT INTO [T1]
(
	[InstrumentId],
	[InstrumentCode],
	[CreateDate],
	[SourceInstrumentCode]
)
VALUES
(
	@InstrumentId,
	@InstrumentCode,
	@CreateDate,
	@SourceInstrumentCode
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @cond NVarChar(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate  -- DateTime
SET     @uptoDate = '2020-02-29 17:54:55.123'

SELECT DISTINCT
	[ins].[SourceInstrumentCode]
FROM
	[T1] [_]
		INNER JOIN [T2] [idx] ON [_].[InstrumentId] = [idx].[InstrumentId]
		INNER JOIN [T3] [w] ON [idx].[IndexId] = [w].[IndexId]
		INNER JOIN [T1] [ins] ON [w].[InstrumentId] = [ins].[InstrumentId]
WHERE
	[ins].[SourceInstrumentCode] IS NOT NULL AND [_].[InstrumentCode] LIKE @cond ESCAPE '~' AND
	DateTime([_].[CreateDate]) <= DateTime(@uptoDate)
ORDER BY
	[ins].[SourceInstrumentCode]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [T3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [T2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [T1]

