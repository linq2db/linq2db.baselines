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

SELECT TOP (2)
	[v].[Integer] / @param as [Integer_1],
	[v].[Decimal] / @param as [Decimal_1],
	[v].[Double] / @param as [Double_1]
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4469Table]

