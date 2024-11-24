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
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33
DECLARE @param_2 Float -- Double
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param as [Integer_1],
	CAST([v].[Decimal] AS Float) / @param_1 as [Decimal_1],
	[v].[Double] / @param_2 as [Double_1]
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4469Table]

