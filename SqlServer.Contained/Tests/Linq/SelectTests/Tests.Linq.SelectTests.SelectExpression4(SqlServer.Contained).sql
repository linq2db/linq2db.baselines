BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SelectExpressionTable]

