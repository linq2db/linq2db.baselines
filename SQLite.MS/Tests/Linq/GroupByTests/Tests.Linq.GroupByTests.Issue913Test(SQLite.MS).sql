﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue913Test]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue913Test]
(
	[InstrumentID]  INTEGER  NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY ([InstrumentID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(1,NULL),
(2,'A'),
(3,'D')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_2].[c1],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[TradingStatus] = 'D'
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue913Test]

