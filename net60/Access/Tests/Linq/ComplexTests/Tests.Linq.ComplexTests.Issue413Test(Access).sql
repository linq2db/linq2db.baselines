﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [T1]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [T1]
(
	[InstrumentId]         Int           NOT NULL,
	[InstrumentCode]       NVarChar(255)     NULL,
	[CreateDate]           DateTime      NOT NULL,
	[SourceInstrumentCode] NVarChar(255)     NULL,

	CONSTRAINT [PK_T1] PRIMARY KEY CLUSTERED ([InstrumentId])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [T2]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [T2]
(
	[InstrumentId] Int NOT NULL,
	[IndexId]      Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [T3]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [T3]
(
	[InstrumentId] Int NOT NULL,
	[IndexId]      Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer -- Int32
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
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer -- Int32
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
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 3
DECLARE @IndexId Integer -- Int32
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
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @IndexId Integer -- Int32
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
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @IndexId Integer -- Int32
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
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode VarWChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate Date -- DateTime
SET     @CreateDate = #2020-02-28 17:54:55#
DECLARE @SourceInstrumentCode VarWChar(7) -- String
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
-- Access AccessOleDb
DECLARE @InstrumentId Integer -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode VarWChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate Date -- DateTime
SET     @CreateDate = #2020-02-28 17:54:55#
DECLARE @SourceInstrumentCode VarWChar -- String
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
-- Access AccessOleDb
DECLARE @cond_1 VarWChar(4) -- String
SET     @cond_1 = 'aaa%'
DECLARE @uptoDate Date -- DateTime
SET     @uptoDate = #2020-02-29 17:54:55#

SELECT
	[t4].[SourceInstrumentCode]
FROM
	(
		SELECT DISTINCT
			[ins].[SourceInstrumentCode]
		FROM
			(([T1] [_]
				INNER JOIN [T2] [idx] ON ([_].[InstrumentId] = [idx].[InstrumentId]))
				INNER JOIN [T3] [w] ON ([idx].[IndexId] = [w].[IndexId]))
				INNER JOIN [T1] [ins] ON ([w].[InstrumentId] = [ins].[InstrumentId])
		WHERE
			[ins].[SourceInstrumentCode] IS NOT NULL AND [_].[InstrumentCode] LIKE @cond_1 AND
			[_].[CreateDate] <= @uptoDate
	) [t4]
ORDER BY
	[t4].[SourceInstrumentCode]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [T3]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [T2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [T1]

