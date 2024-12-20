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

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
SELECT 100,100,100

BeforeExecute
-- SqlCe

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(38, 17)) / 33 as [Integer_1],
	[v].[Decimal] / 33 as [Decimal_1],
	[v].[Double] / 33 as [Double_1]
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4469Table]

