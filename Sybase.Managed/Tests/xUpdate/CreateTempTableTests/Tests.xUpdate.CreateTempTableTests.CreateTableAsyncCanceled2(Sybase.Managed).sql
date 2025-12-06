-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

-- Sybase.Managed Sybase

CREATE TABLE #TempTable
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
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

