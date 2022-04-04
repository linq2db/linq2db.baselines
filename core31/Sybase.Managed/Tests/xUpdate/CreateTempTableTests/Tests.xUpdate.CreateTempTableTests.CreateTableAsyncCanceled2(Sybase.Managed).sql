BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE #TempTable
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO #TempTable
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'#TempTable') IS NOT NULL)
	DROP TABLE #TempTable

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TempTable]

