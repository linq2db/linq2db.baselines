BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @ID Int -- Int32
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
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @p UniqueIdentifier -- Guid
SET     @p = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_1 UniqueIdentifier -- Guid
SET     @p_1 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'

SELECT TOP (@take)
	@p,
	@p_1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SelectExpressionTable]

