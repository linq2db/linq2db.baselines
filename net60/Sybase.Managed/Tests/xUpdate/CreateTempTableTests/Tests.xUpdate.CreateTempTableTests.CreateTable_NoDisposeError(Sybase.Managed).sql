BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #TempTable
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE #TempTable

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TempTable') IS NOT NULL)
	DROP TABLE #TempTable

