BeforeExecute
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
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT TOP 1
	@p
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectExpressionTable') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

