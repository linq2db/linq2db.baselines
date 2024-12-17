BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Mixed') IS NOT NULL)
	DROP TABLE [Mixed]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Mixed') IS NULL)
	EXECUTE('
		CREATE TABLE [Mixed]
		(
			[Int]    Int           NOT NULL,
			[Str]    NVarChar(255)     NULL,
			[Date]   DateTime      NOT NULL,
			[Double] Float         NOT NULL,
			[Bool]   Bit           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Int Integer -- Int32
SET     @Int = 1
DECLARE @Str UniVarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date DateTime
SET     @Date = '2001-01-01'
DECLARE @Double Double
SET     @Double = 1
DECLARE @Bool Bit -- Boolean
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
-- Sybase.Managed Sybase
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Str UniVarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date DateTime
SET     @Date = '2002-02-02'
DECLARE @Double Double
SET     @Double = 2
DECLARE @Bool Bit -- Boolean
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
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = 'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = 1 AND
	 EXISTS (
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date]
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Mixed') IS NOT NULL)
	DROP TABLE [Mixed]

