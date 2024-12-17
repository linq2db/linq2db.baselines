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
DECLARE @Integer  -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(3, 0)
SET     @Decimal = 100
DECLARE @Double  -- Double
SET     @Double = 100

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @param  -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2  -- Double
SET     @param_2 = 33

SELECT
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4469Table]

