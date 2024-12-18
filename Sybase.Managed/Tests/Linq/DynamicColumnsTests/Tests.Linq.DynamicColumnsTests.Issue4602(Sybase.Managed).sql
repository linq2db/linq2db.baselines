BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicParent') IS NOT NULL)
	DROP TABLE [DynamicParent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicParent') IS NULL)
	EXECUTE('
		CREATE TABLE [DynamicParent]
		(
			[ID] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicChild') IS NOT NULL)
	DROP TABLE [DynamicChild]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicChild') IS NULL)
	EXECUTE('
		CREATE TABLE [DynamicChild]
		(
			[ID]       Int IDENTITY NOT NULL,
			[ParentID] Int          NOT NULL,

			CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[it].[ID]
FROM
	[DynamicParent] [it]
		LEFT JOIN [DynamicChild] [a_Child] ON [it].[ID] = [a_Child].[ParentID]
WHERE
	[a_Child].[ID] = 123 AND [a_Child].[ID] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicChild') IS NOT NULL)
	DROP TABLE [DynamicChild]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicParent') IS NOT NULL)
	DROP TABLE [DynamicParent]

