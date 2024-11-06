BeforeExecute
-- SqlCe

DROP TABLE [SelectExpressionTable]

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
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT TOP (@take)
	@p as [c1]
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [SelectExpressionTable]

