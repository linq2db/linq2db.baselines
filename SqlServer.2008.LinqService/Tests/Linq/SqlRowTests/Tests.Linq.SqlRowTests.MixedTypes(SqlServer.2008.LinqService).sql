BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Mixed]', N'U') IS NOT NULL)
	DROP TABLE [Mixed]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Mixed]', N'U') IS NULL)
	CREATE TABLE [Mixed]
	(
		[Int]    Int            NOT NULL,
		[Str]    NVarChar(4000)     NULL,
		[Date]   DateTime2      NOT NULL,
		[Double] Float          NOT NULL,
		[Bool]   Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Int Int -- Int32
SET     @Int = 1
DECLARE @Str NVarChar(4000) -- String
SET     @Str = N'One'
DECLARE @Date DateTime2
SET     @Date = CAST('2001-01-01T00:00:00.0000000' AS DATETIME2)
DECLARE @Double Float -- Double
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
-- SqlServer.2008
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @Str NVarChar(4000) -- String
SET     @Str = N'Two'
DECLARE @Date DateTime2
SET     @Date = CAST('2002-02-02T00:00:00.0000000' AS DATETIME2)
DECLARE @Double Float -- Double
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
-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = N'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = 1 AND
	EXISTS(
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date]
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Mixed]', N'U') IS NOT NULL)
	DROP TABLE [Mixed]

