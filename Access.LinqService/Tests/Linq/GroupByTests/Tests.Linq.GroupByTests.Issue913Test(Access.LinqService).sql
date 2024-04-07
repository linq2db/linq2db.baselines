BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue913Test]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus WChar -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Access AccessOleDb
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus WChar(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Access AccessOleDb
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus WChar(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

DROP TABLE [Issue913Test]

