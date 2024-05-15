BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue913Test]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue913Test]
(
	[InstrumentID]  INTEGER  NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY ([InstrumentID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue913Test]

