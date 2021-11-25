BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue913Test]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(1,NULL),
(2,N'A'),
(3,N'D')

BeforeExecute
-- SqlServer.2016

SELECT
	IIF([selectParam].[TradingStatus] = N'D', 1, 0),
	Count(*)
FROM
	[Issue913Test] [selectParam]
GROUP BY
	IIF([selectParam].[TradingStatus] = N'D', 1, 0),
	IIF([selectParam].[TradingStatus] = N'D', 1, 0)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue913Test]

