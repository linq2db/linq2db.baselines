BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [SelectExpressionTable]

