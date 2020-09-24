BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

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
	1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [SelectExpressionTable]

