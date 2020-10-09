BeforeExecute
-- SqlCe

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY ([InstrumentID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
SELECT 1,NULL UNION ALL
SELECT 2,'A' UNION ALL
SELECT 3,'D'

BeforeExecute
-- SqlCe

SELECT 
	[t1].[c2], 
	Count(*)
FROM
	( 
		SELECT 
			CASE
				WHEN [selectParam].[TradingStatus] = 'D'
					THEN 1
				ELSE 0
			END as [c1], 
			CASE WHEN [selectParam].[TradingStatus] = 'D' THEN 1 ELSE 0 END as [c2]
		FROM
			[Issue913Test] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue913Test]

