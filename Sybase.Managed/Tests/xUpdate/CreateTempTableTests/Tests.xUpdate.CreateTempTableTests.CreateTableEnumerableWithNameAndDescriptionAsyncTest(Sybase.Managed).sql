BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'#TempTable') IS NOT NULL)
	DROP TABLE #TempTable

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'#TempTable') IS NULL)
	CREATE TABLE #TempTable
	(
		[Name] NVarChar(20) NOT NULL
	)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO #TempTable
(
	[Name]
)
SELECT 'John'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN #TempTable [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'#TempTable') IS NOT NULL)
	DROP TABLE #TempTable

