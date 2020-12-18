BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
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
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = N'A'

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
-- SqlServer.2019 SqlServer.2017
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = N'D'

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
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[c2],
	Count(*)
FROM
	(
		SELECT
			IIF([selectParam].[TradingStatus] = N'D', 1, 0) as [c1],
			IIF([selectParam].[TradingStatus] = N'D', 1, 0) as [c2]
		FROM
			[Issue913Test] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

