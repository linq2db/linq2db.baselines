-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int -- Int32
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

-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int -- Int32
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

-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId Int -- Int32
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

-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Int -- Int32
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

-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Int -- Int32
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

-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4000) -- String
SET     @InstrumentCode = N'aaa1'
DECLARE @CreateDate DateTime2
SET     @CreateDate = DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7)
DECLARE @SourceInstrumentCode NVarChar(4000) -- String
SET     @SourceInstrumentCode = N'NOTNULL'

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

-- SqlServer.2016
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4000) -- String
SET     @InstrumentCode = N'aaa2'
DECLARE @CreateDate DateTime2
SET     @CreateDate = DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7)
DECLARE @SourceInstrumentCode NVarChar(4000) -- String
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

-- SqlServer.2016
DECLARE @cond NVarChar(4000) -- String
SET     @cond = N'aaa%'
DECLARE @uptoDate DateTime2
SET     @uptoDate = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

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
			[t4].[InstrumentCode] LIKE @cond ESCAPE N'~' AND [t4].[CreateDate] <= @uptoDate AND
			[ins].[SourceInstrumentCode] IS NOT NULL
	) [t5]
ORDER BY
	[t5].[SourceInstrumentCode]

