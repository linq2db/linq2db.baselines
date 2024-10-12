BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NULL)
	CREATE TABLE [Issue913Test]
	(
		[InstrumentID]  Int      NOT NULL,
		[TradingStatus] NChar(1)     NULL,

		CONSTRAINT [PK_Issue913Test] PRIMARY KEY CLUSTERED ([InstrumentID])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
SELECT 1,NULL UNION ALL
SELECT 2,N'A' UNION ALL
SELECT 3,N'D'

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[IsDelisted],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[TradingStatus] = N'D' THEN 1
				ELSE 0
			END as [IsDelisted]
		FROM
			[Issue913Test] [g_1]
	) [t1]
GROUP BY
	[t1].[IsDelisted]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue913Test]', N'U') IS NOT NULL)
	DROP TABLE [Issue913Test]

