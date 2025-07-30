BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @cond VarWChar(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate Date -- DateTime
SET     @uptoDate = #2020-02-29 17:54:55#

SELECT
	[t5].[SourceInstrumentCode]
FROM
	(
		SELECT DISTINCT
			[ins].[SourceInstrumentCode]
		FROM
			(([T1] [t4]
				INNER JOIN [T2] [idx] ON ([t4].[InstrumentId] = [idx].[InstrumentId]))
				INNER JOIN [T3] [w] ON ([idx].[IndexId] = [w].[IndexId]))
				INNER JOIN [T1] [ins] ON ([w].[InstrumentId] = [ins].[InstrumentId])
		WHERE
			[t4].[InstrumentCode] LIKE @cond AND [t4].[CreateDate] <= @uptoDate AND
			[ins].[SourceInstrumentCode] IS NOT NULL
	) [t5]
ORDER BY
	[t5].[SourceInstrumentCode]

