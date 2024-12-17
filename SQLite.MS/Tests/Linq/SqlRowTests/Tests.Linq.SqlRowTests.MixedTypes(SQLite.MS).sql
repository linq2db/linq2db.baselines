BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Mixed]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Mixed]
(
	[Int]    INTEGER       NOT NULL,
	[Str]    NVarChar(255)     NULL,
	[Date]   DateTime2     NOT NULL,
	[Double] Float         NOT NULL,
	[Bool]   Bit           NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(1,'One','2001-01-01 00:00:00.000',1,1),
(2,'Two','2002-02-02 00:00:00.000',2,0)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND ([t].[Str], [t].[Double], [t].[Bool]) = ('One', 1, 1) AND
	 EXISTS (
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			(2, [u].[Date]) > ([u].[Int], [t].[Date])
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Mixed]

