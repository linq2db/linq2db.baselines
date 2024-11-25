BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Mixed') IS NOT NULL)
	DROP TABLE [Mixed]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Mixed') IS NULL)
	EXECUTE('
		CREATE TABLE [Mixed]
		(
			[Int]    Int           NOT NULL,
			[Str]    NVarChar(255)     NULL,
			[Date]   DateTime      NOT NULL,
			[Double] Float         NOT NULL,
			[Bool]   Bit           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
SELECT 1,'One','2001-01-01',1,1 UNION ALL
SELECT 2,'Two','2002-02-02',2,0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = 'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = 1 AND
	EXISTS(
		SELECT
			1
		FROM
			[Mixed] [u]
		WHERE
			2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date]
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Mixed') IS NOT NULL)
	DROP TABLE [Mixed]

