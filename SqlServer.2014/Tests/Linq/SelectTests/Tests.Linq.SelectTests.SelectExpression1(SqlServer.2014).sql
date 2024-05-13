BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

