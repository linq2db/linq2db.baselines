BeforeExecute
-- SqlServer.2017

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @p_1 UniqueIdentifier -- Guid
SET     @p_1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_2 UniqueIdentifier -- Guid
SET     @p_2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'

SELECT TOP (@take)
	@p_1,
	@p_2
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlServer.2017

DROP TABLE [SelectExpressionTable]

