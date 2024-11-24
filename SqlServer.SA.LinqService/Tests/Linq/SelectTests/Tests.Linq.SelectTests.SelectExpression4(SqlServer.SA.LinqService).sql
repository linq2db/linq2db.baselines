BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SelectExpressionTable]

