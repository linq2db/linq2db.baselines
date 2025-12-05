-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
DECLARE @cond NVarChar(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate  -- DateTime
SET     @uptoDate = '2020-02-29 17:54:55.123'

SELECT
	[t5].[SourceInstrumentCode]
FROM
	(
		SELECT DISTINCT
			[ins].[SourceInstrumentCode]
		FROM
			[T1] [t4]
				INNER JOIN [T2] [idx] ON [t4].[InstrumentId] = [idx].[InstrumentId]
				INNER JOIN [T3] [w] ON [idx].[IndexId] = [w].[IndexId]
				INNER JOIN [T1] [ins] ON [w].[InstrumentId] = [ins].[InstrumentId]
		WHERE
			[t4].[InstrumentCode] LIKE @cond ESCAPE '~' AND strftime('%Y-%m-%d %H:%M:%f', [t4].[CreateDate]) <= strftime('%Y-%m-%d %H:%M:%f', @uptoDate) AND
			[ins].[SourceInstrumentCode] IS NOT NULL
	) [t5]
ORDER BY
	[t5].[SourceInstrumentCode]

