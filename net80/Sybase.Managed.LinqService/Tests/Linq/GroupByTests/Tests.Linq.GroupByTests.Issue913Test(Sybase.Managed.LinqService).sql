BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue913Test') IS NOT NULL)
	DROP TABLE [Issue913Test]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue913Test') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue913Test]
		(
			[InstrumentID]  Int      NOT NULL,
			[TradingStatus] NChar(1)     NULL,

			CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus UniChar -- StringFixedLength
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
-- Sybase.Managed Sybase
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus UniChar(1) -- StringFixedLength
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
-- Sybase.Managed Sybase
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus UniChar(1) -- StringFixedLength
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
-- Sybase.Managed Sybase

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[TradingStatus] = 'D'
					THEN 1
				ELSE 0
			END as [Key_1],
			CASE
				WHEN [selectParam].[TradingStatus] = 'D'
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			[Issue913Test] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[c1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue913Test') IS NOT NULL)
	DROP TABLE [Issue913Test]

