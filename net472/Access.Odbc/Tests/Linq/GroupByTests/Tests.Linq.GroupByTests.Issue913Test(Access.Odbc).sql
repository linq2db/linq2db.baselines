BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue913Test]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			Iif([selectParam].[TradingStatus] = 'D', True, False) as [Key_1],
			Iif([selectParam].[TradingStatus] = 'D', True, False) as [c1]
		FROM
			[Issue913Test] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[c1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue913Test]

