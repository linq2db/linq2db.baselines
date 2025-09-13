BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TempTable]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[ID]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

