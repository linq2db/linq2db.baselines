﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue913Test]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			IIF([selectParam].[TradingStatus] = N'D', 1, 0) as [Key_1],
			IIF([selectParam].[TradingStatus] = N'D', 1, 0) as [c1]
		FROM
			[Issue913Test] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[c1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue913Test]

