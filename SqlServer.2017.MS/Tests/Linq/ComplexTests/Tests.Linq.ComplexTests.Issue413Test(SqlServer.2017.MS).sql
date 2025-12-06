-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @cond NVarChar(4000) -- String
SET     @cond = N'aaa%'
DECLARE @uptoDate DateTime2
SET     @uptoDate = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t8].[SourceInstrumentCode]
FROM
	(
		SELECT DISTINCT
			[t6].[SourceInstrumentCode]
		FROM
			[T1] [t7]
				INNER JOIN [T2] [t4] ON [t7].[InstrumentId] = [t4].[InstrumentId]
				INNER JOIN [T3] [t5] ON [t4].[IndexId] = [t5].[IndexId]
				INNER JOIN [T1] [t6] ON [t5].[InstrumentId] = [t6].[InstrumentId]
		WHERE
			[t7].[InstrumentCode] LIKE @cond ESCAPE N'~' AND [t7].[CreateDate] <= @uptoDate AND
			[t6].[SourceInstrumentCode] IS NOT NULL
	) [t8]
ORDER BY
	[t8].[SourceInstrumentCode]

