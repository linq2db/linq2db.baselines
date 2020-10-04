BeforeExecute
-- SqlCe

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
SELECT 1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @p1 UniqueIdentifier -- Guid
SET     @p1 = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p2 UniqueIdentifier -- Guid
SET     @p2 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'

SELECT TOP (@take)
	@p1,
	@p2
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlCe

DROP TABLE [SelectExpressionTable]

