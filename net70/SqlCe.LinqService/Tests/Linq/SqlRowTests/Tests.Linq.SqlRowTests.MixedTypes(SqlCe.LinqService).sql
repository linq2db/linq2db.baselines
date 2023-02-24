BeforeExecute
-- SqlCe

DROP TABLE [Mixed]

BeforeExecute
-- SqlCe

CREATE TABLE [Mixed]
(
	[Int]    Int           NOT NULL,
	[Str]    NVarChar(255)     NULL,
	[Date]   DateTime      NOT NULL,
	[Double] Float         NOT NULL,
	[Bool]   Bit           NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 1
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 DateTime
SET     @Date_1 = '2001-01-01'
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
-- SqlCe
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 DateTime
SET     @Date_1 = '2002-02-02'
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
-- SqlCe

SELECT
	Count(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = 'One' AND
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
-- SqlCe

DROP TABLE [Mixed]

