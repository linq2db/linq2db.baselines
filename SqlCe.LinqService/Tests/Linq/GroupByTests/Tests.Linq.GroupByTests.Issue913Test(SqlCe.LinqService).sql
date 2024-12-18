BeforeExecute
-- SqlCe

DROP TABLE [Issue913Test]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY ([InstrumentID])
)

BeforeExecute
-- SqlCe
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus NVarChar -- String
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
-- SqlCe
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus NVarChar(1) -- String
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
-- SqlCe
DECLARE @InstrumentID Int -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus NVarChar(1) -- String
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
-- SqlCe

SELECT
	[g_2].[IsDelisted],
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[TradingStatus] = 'D' AND [g_1].[TradingStatus] IS NOT NULL
					THEN 1
				ELSE 0
			END as [IsDelisted]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[IsDelisted]

BeforeExecute
-- SqlCe

DROP TABLE [Issue913Test]

