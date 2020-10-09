BeforeExecute
-- SqlServer.2008

CREATE TABLE [T1]
(
	[InstrumentId]         Int            NOT NULL,
	[InstrumentCode]       NVarChar(4000)     NULL,
	[CreateDate]           DateTime       NOT NULL,
	[SourceInstrumentCode] NVarChar(4000)     NULL,

	CONSTRAINT [PK_T1] PRIMARY KEY CLUSTERED ([InstrumentId])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [T2]
(
	[InstrumentId] Int NOT NULL,
	[IndexId]      Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [T3]
(
	[InstrumentId] Int NOT NULL,
	[IndexId]      Int NOT NULL
)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4000) -- String
SET     @InstrumentCode = N'aaa1'
DECLARE @CreateDate DateTime2
SET     @CreateDate = '2020-02-28T17:54:55.1231234'
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
-- SqlServer.2008
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4000) -- String
SET     @InstrumentCode = N'aaa2'
DECLARE @CreateDate DateTime2
SET     @CreateDate = '2020-02-28T17:54:55.1231234'
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
-- SqlServer.2008
DECLARE @cond NVarChar(4000) -- String
SET     @cond = N'aaa%'
DECLARE @uptoDate DateTime2
SET     @uptoDate = '2020-02-29T17:54:55.1231234'

SELECT DISTINCT 
	[ins].[SourceInstrumentCode]
FROM
	[T1] [_]
		INNER JOIN [T2] [idx] ON [_].[InstrumentId] = [idx].[InstrumentId]
		INNER JOIN [T3] [w] ON [idx].[IndexId] = [w].[IndexId]
		INNER JOIN [T1] [ins] ON [w].[InstrumentId] = [ins].[InstrumentId]
WHERE
	[ins].[SourceInstrumentCode] IS NOT NULL AND [_].[InstrumentCode] LIKE @cond ESCAPE N'~' AND
	[_].[CreateDate] <= @uptoDate
ORDER BY
	[ins].[SourceInstrumentCode]

BeforeExecute
-- SqlServer.2008

DROP TABLE [T3]

BeforeExecute
-- SqlServer.2008

DROP TABLE [T2]

BeforeExecute
-- SqlServer.2008

DROP TABLE [T1]

