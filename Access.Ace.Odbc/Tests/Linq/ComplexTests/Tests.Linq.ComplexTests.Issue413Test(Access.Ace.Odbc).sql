-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 1
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa1'
DECLARE @CreateDate DateTime
SET     @CreateDate = #2020-02-28 17:54:55#
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
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @InstrumentId Int -- Int32
SET     @InstrumentId = 2
DECLARE @InstrumentCode NVarChar(4) -- String
SET     @InstrumentCode = 'aaa2'
DECLARE @CreateDate DateTime
SET     @CreateDate = #2020-02-28 17:54:55#
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
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @cond NVarChar(4) -- String
SET     @cond = 'aaa%'
DECLARE @uptoDate DateTime
SET     @uptoDate = #2020-02-29 17:54:55#

SELECT
	[t8].[SourceInstrumentCode]
FROM
	(
		SELECT DISTINCT
			[t6].[SourceInstrumentCode]
		FROM
			(([T1] [t7]
				INNER JOIN [T2] [t4] ON ([t7].[InstrumentId] = [t4].[InstrumentId]))
				INNER JOIN [T3] [t5] ON ([t4].[IndexId] = [t5].[IndexId]))
				INNER JOIN [T1] [t6] ON ([t5].[InstrumentId] = [t6].[InstrumentId])
		WHERE
			[t7].[InstrumentCode] LIKE ? AND [t7].[CreateDate] <= ? AND
			[t6].[SourceInstrumentCode] IS NOT NULL
	) [t8]
ORDER BY
	[t8].[SourceInstrumentCode]

