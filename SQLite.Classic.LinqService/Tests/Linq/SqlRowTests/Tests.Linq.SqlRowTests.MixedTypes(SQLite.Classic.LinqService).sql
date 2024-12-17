BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Mixed]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Mixed]
(
	[Int]    INTEGER       NOT NULL,
	[Str]    NVarChar(255)     NULL,
	[Date]   DateTime2     NOT NULL,
	[Double] Float         NOT NULL,
	[Bool]   Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Int  -- Int32
SET     @Int = 1
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date VarChar(23) -- AnsiString
SET     @Date = '2001-01-01 00:00:00.000'
DECLARE @Double  -- Double
SET     @Double = 1
DECLARE @Bool  -- Boolean
SET     @Bool = 1

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Int  -- Int32
SET     @Int = 2
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date VarChar(23) -- AnsiString
SET     @Date = '2002-02-02 00:00:00.000'
DECLARE @Double  -- Double
SET     @Double = 2
DECLARE @Bool  -- Boolean
SET     @Bool = 0

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Mixed]

