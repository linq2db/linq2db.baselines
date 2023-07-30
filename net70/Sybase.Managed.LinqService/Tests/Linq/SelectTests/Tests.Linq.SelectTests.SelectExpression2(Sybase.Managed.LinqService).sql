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
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Char(36) -- AnsiStringFixedLength
SET     @p = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_1 Char(36) -- AnsiStringFixedLength
SET     @p_1 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'

SELECT TOP 1
	@p,
	@p_1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SelectExpressionTable') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

