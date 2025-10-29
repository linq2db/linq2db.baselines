-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

-- Sybase.Managed Sybase

CREATE TABLE #TempTable
(
	[ID] Int NOT NULL
)

-- Sybase.Managed Sybase

INSERT INTO #TempTable
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TempTable') IS NOT NULL)
	DROP TABLE #TempTable

-- Sybase.Managed Sybase

DROP TABLE [TempTable]

