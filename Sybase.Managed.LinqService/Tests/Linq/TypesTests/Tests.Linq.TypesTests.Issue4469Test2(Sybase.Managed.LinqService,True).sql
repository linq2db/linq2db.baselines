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
			[Decimal] DECIMAL(10, 5) NOT NULL,
			[Double]  Float          NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Integer Integer -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(3, 0)
SET     @Decimal = 100
DECLARE @Double Double
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
-- Sybase.Managed Sybase

SELECT TOP 2
	CAST([v].[Integer] AS DECIMAL) / 33,
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4469Table') IS NOT NULL)
	DROP TABLE [Issue4469Table]

