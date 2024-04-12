﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014

SELECT
	[g_2].[c1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[TradingStatus] = N'D', 1, 0) as [c1]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

