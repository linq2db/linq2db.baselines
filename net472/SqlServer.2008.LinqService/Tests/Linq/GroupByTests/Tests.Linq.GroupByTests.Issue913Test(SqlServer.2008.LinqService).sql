﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008

SELECT
	CASE
		WHEN [selectParam].[TradingStatus] = N'D'
			THEN 1
		ELSE 0
	END,
	Count(*)
FROM
	[Issue913Test] [selectParam]
GROUP BY
	CASE
		WHEN [selectParam].[TradingStatus] = N'D'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [selectParam].[TradingStatus] = N'D'
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

