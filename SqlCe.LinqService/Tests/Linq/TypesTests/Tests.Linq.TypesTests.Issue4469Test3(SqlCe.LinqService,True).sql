BeforeExecute
-- SqlCe

DROP TABLE [Issue4469Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4469Table]
(
	[Integer] Int            NOT NULL,
	[Decimal] Decimal(10, 5) NOT NULL,
	[Double]  Float          NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Integer Int -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(3, 0)
SET     @Decimal = 100
DECLARE @Double Float -- Double
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
-- SqlCe

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / 33 as [Integer_1],
	CAST([v].[Decimal] AS Float) / 33 as [Decimal_1],
	[v].[Double] / 33 as [Double_1]
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4469Table]

