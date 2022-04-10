﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[TradingStatus] = N'D'
					THEN 1
				ELSE 0
			END as [Key_1],
			CASE
				WHEN [selectParam].[TradingStatus] = N'D'
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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

