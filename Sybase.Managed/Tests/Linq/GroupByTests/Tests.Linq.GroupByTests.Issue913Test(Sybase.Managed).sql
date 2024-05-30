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

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
SELECT 1,NULL UNION ALL
SELECT 2,'A' UNION ALL
SELECT 3,'D'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_2].[IsDelisted],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[TradingStatus] = 'D' THEN 1
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

