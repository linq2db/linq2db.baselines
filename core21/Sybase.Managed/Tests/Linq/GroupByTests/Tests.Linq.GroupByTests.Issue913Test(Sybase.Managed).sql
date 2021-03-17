﻿BeforeExecute
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

