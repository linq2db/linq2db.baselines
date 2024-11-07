BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SelectExpressionTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT TOP (@take)
	@p
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SelectExpressionTable]

