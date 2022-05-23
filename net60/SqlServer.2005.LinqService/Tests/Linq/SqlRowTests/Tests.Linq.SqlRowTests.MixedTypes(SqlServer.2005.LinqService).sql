BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Mixed]', N'U') IS NOT NULL)
	DROP TABLE [Mixed]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Mixed]', N'U') IS NULL)
	CREATE TABLE [Mixed]
	(
		[Int]    Int            NOT NULL,
		[Str]    NVarChar(4000)     NULL,
		[Date]   DateTime       NOT NULL,
		[Double] Float          NOT NULL,
		[Bool]   Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 1
DECLARE @Str NVarChar(4000) -- String
SET     @Str = N'One'
DECLARE @Date_1 DateTime
SET     @Date_1 = CAST('2001-01-01T00:00:00.000' AS DATETIME)
DECLARE @Double_1 Float -- Double
SET     @Double_1 = 1
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
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- SqlServer.2005
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Str NVarChar(4000) -- String
SET     @Str = N'Two'
DECLARE @Date_1 DateTime
SET     @Date_1 = CAST('2002-02-02T00:00:00.000' AS DATETIME)
DECLARE @Double_1 Float -- Double
SET     @Double_1 = 2
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
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
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
			(2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Mixed]', N'U') IS NOT NULL)
	DROP TABLE [Mixed]

