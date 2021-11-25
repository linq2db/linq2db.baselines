﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue913Test]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue913Test]
(
	[InstrumentID]  INTEGER  NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY ([InstrumentID])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN [selectParam].[TradingStatus] = 'D'
			THEN 1
		ELSE 0
	END,
	Count(*)
FROM
	[Issue913Test] [selectParam]
GROUP BY
	CASE
		WHEN [selectParam].[TradingStatus] = 'D'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [selectParam].[TradingStatus] = 'D'
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue913Test]

