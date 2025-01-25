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

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
SELECT 1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1 as [c1]
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [SelectExpressionTable]

