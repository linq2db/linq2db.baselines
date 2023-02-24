BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Mixed]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 1
DECLARE @Str NVarChar(4000) -- String
SET     @Str = N'One'
DECLARE @Date_1 DateTime2
SET     @Date_1 = DATETIME2FROMPARTS(2001, 1, 1, 0, 0, 0, 0, 7)
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
-- SqlServer.Contained SqlServer.2019
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Str NVarChar(4000) -- String
SET     @Str = N'Two'
DECLARE @Date_1 DateTime2
SET     @Date_1 = DATETIME2FROMPARTS(2002, 2, 2, 0, 0, 0, 0, 7)
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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Mixed]

