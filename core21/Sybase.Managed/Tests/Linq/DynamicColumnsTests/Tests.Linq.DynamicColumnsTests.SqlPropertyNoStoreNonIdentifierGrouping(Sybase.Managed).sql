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
SELECT 77,5 UNION ALL
SELECT 77,5

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Not Identifier],
	Count(*),
	Sum([t1].[Some Value])
FROM
	[DynamicTable] [t1]
GROUP BY
	[t1].[Not Identifier]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NOT NULL)
	DROP TABLE [DynamicTable]

