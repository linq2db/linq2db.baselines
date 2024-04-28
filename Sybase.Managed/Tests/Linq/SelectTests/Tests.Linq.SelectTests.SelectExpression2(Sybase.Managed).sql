﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectExpressionTable') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectExpressionTable') IS NULL)
	EXECUTE('
		CREATE TABLE [SelectExpressionTable]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	CASE
		WHEN 1 = 1 THEN 1
		ELSE 0
	END
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectExpressionTable') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

