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

SELECT TOP (@take)
	CASE
		WHEN 1 = 1 THEN 1
		ELSE 0
	END as [c1]
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [SelectExpressionTable]

