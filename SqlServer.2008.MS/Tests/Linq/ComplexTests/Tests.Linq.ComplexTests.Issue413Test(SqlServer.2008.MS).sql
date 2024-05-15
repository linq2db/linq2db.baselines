BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T1]', N'U') IS NOT NULL)
	DROP TABLE [T1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T1]', N'U') IS NULL)
	CREATE TABLE [T1]
	(
		[InstrumentId]         Int            NOT NULL,
		[InstrumentCode]       NVarChar(4000)     NULL,
		[CreateDate]           DateTime2      NOT NULL,
		[SourceInstrumentCode] NVarChar(4000)     NULL,

		CONSTRAINT [PK_T1] PRIMARY KEY CLUSTERED ([InstrumentId])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T2]', N'U') IS NOT NULL)
	DROP TABLE [T2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T2]', N'U') IS NULL)
	CREATE TABLE [T2]
	(
		[InstrumentId] Int NOT NULL,
		[IndexId]      Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T3]', N'U') IS NOT NULL)
	DROP TABLE [T3]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T3]', N'U') IS NULL)
	CREATE TABLE [T3]
	(
		[InstrumentId] Int NOT NULL,
		[IndexId]      Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4000) -- String
SET     @InstrumentCode = N'aaa1'
DECLARE @CreateDate DateTime2
SET     @CreateDate = CAST('2020-02-28T17:54:55.1231234' AS DATETIME2)
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4000) -- String
SET     @InstrumentCode = N'aaa2'
DECLARE @CreateDate DateTime2
SET     @CreateDate = CAST('2020-02-28T17:54:55.1231234' AS DATETIME2)
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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @cond NVarChar(4000) -- String
SET     @cond = N'aaa%'
DECLARE @uptoDate DateTime2
SET     @uptoDate = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T3]', N'U') IS NOT NULL)
	DROP TABLE [T3]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T2]', N'U') IS NOT NULL)
	DROP TABLE [T2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[T1]', N'U') IS NOT NULL)
	DROP TABLE [T1]

