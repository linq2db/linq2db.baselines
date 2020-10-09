BeforeExecute
-- SqlServer.2012

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlServer.2012

DROP TABLE [SelectExpressionTable]

