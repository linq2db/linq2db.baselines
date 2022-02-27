BeforeExecute
-- SqlServer.2017

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

SELECT
	[t1].[c2],
	Count(*)
FROM
	(
		SELECT
			IIF([selectParam].[TradingStatus] = N'D', 1, 0) as [c1],
			CASE WHEN [selectParam].[TradingStatus] = N'D' THEN 1 ELSE 0 END as [c2]
		FROM
			[Issue913Test] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

BeforeExecute
-- SqlServer.2017

DROP TABLE [Issue913Test]

