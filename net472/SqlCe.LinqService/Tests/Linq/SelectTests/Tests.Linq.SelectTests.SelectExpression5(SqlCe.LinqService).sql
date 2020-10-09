BeforeExecute
-- SqlCe

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlCe

DROP TABLE [SelectExpressionTable]

