BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue913Test]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus NChar -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[g_2].[IsDelisted],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[TradingStatus] = 'D' AND [g_1].[TradingStatus] IS NOT NULL, True, False) as [IsDelisted]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[IsDelisted]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue913Test]

