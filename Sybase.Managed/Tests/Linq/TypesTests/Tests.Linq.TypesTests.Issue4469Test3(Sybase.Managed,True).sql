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

SELECT TOP 2
	CAST([v].[Integer] AS Float) / 33,
	CAST([v].[Decimal] AS Float) / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4469Table') IS NOT NULL)
	DROP TABLE [Issue4469Table]

