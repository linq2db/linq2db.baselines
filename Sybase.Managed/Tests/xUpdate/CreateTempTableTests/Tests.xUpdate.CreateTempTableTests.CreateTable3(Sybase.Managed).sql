BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

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
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

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

