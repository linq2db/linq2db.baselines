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
	[g_2].[IsDelisted],
	COUNT(*)
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue913Test') IS NOT NULL)
	DROP TABLE [Issue913Test]

