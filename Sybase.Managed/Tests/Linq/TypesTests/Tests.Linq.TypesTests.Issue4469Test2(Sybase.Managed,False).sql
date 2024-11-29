BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4469Table') IS NOT NULL)
	DROP TABLE [Issue4469Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4469Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4469Table]
		(
			[Integer] Int            NOT NULL,
			[Decimal] Decimal(10, 5) NOT NULL,
			[Double]  Float          NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
SELECT 100,100,100

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33
DECLARE @param_2 Decimal(2, 0)
SET     @param_2 = 33

SELECT TOP 2
	CAST([v].[Integer] AS Decimal) / @param,
	[v].[Decimal] / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4469Table') IS NOT NULL)
	DROP TABLE [Issue4469Table]

