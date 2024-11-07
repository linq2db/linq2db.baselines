BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3631Table') IS NOT NULL)
	DROP TABLE [Issue3631Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3631Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3631Table]
		(
			[Country] NVarChar(2) NOT NULL,
			[State]   NVarChar(2) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
SELECT 'US','AL' UNION ALL
SELECT 'US','AZ' UNION ALL
SELECT 'US','CA' UNION ALL
SELECT 'US','FL' UNION ALL
SELECT 'US','IN' UNION ALL
SELECT 'US','OH' UNION ALL
SELECT 'US','NY' UNION ALL
SELECT 'CA','AB' UNION ALL
SELECT 'CA','ON'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(
				SELECT 'US' AS [Item1], 'CA' AS [Item2]
				UNION ALL
				SELECT 'US', 'NY') [t1]
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3631Table') IS NOT NULL)
	DROP TABLE [Issue3631Table]

