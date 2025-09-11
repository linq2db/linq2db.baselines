BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE #TempTable
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE #TempTable

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'#TempTable') IS NOT NULL)
	DROP TABLE #TempTable

