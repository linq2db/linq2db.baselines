﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NOT NULL)
	DROP TABLE [DynamicTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DynamicTable]
		(
			[ID]             Int IDENTITY NOT NULL,
			[Not Identifier] Int          NOT NULL,
			[Some Value]     Int          NOT NULL,

			CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
SELECT 77,0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NOT NULL)
	DROP TABLE [DynamicTable]

