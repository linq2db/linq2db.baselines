BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4469Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4469Table]
(
	[Integer] INTEGER        NOT NULL,
	[Decimal] Decimal(10, 5) NOT NULL,
	[Double]  Float          NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(100,100,100)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	CAST([v].[Integer] AS Float) / 33,
	CAST([v].[Decimal] AS Float) / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4469Table]

