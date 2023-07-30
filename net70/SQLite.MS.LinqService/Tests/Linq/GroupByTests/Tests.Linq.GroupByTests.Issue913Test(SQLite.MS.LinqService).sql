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
DECLARE @InstrumentID  -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus NChar -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InstrumentID  -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InstrumentID  -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue913Test]

