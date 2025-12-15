-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TempTable]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

-- Sybase.Managed Sybase

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

